function [center, U,V, obj_fcn] = scad(data, cluster_n, options)

data_n = size(data, 1);
in_n = size(data, 2);

% Change the following to set default options
default_options = [1.1;	% exponent for the partition matrix U
        1.1;
		100;	% max. number of iteration
		1e-5;	% min. amount of improvement
		1];	% info display during iteration 

if nargin == 2,
	options = default_options;
else
	% If "options" is not fully specified, pad it with default values.
	if length(options) < 5,
		tmp = default_options;
		tmp(1:length(options)) = options;
		options = tmp;
	end
	% If some entries of "options" are nan's, replace them with defaults.
	nan_index = find(isnan(options)==1);
	options(nan_index) = default_options(nan_index);
	if options(1) <= 1,
		error('The exponent should be greater than 1!');
	end
end

expo1 = options(1);% Exponent for U
expo2 = options(2); % Exponent for V
max_iter = options(3);		% Max. iteration
min_impro = options(4);		% Min. improvement
display = options(5);		% Display info or not

obj_fcn = zeros(max_iter, 1);	% Array for objective function

U = initfcm(cluster_n, data_n);			% Initial fuzzy partition
V=(1/in_n)*ones(cluster_n,in_n);
% Main loop
for i = 1:max_iter,
    Uold=U;
	[U,V, center, obj_fcn(i)] = stepscad(data, U,V, cluster_n, expo1, expo2);
	if display, 
		fprintf('Iteration count = %d, obj. fcn = %f\n', i, obj_fcn(i));
	end
	% check termination condition
	if i > 1,
        if (max(max(abs(Uold-U),[],1),[],2)) < min_impro, break; end,
		%if abs(obj_fcn(i) - obj_fcn(i-1)) < min_impro, break; end,
	end
end

iter_n = i;	% Actual number of iterations 
obj_fcn(iter_n+1:max_iter) = [];
