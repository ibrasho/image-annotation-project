function [U_new,V_new, center, obj_fcn] = stepscad(data, U, V, cluster_n, expo1,expo2)

mf = U.^expo1;       % MF matrix after exponential modification
qV=V.^expo2;  
center = mf*data./((ones(size(data, 2), 1)*sum(mf'))'); % new center
dist=zeros(size(U));
for s=1:size(data,2)
dist =dist+ (qV(:,s)*ones(1,size(data,1))).*distfcm(center(:,s), data(:,s));       % fill the distance matrix
end
obj_fcn = sum(sum((dist.^2).*mf));  % objective function
tmp = dist.^(-2/(expo1-1));      % calculate new U, suppose expo != 1
U_new = tmp./(ones(cluster_n, 1)*sum(tmp));

dist2=zeros(size(V));
for s=1:size(data,2)
dist2(:,s) = sum( mf.*distfcm(center(:,s), data(:,s)),2);       % fill the distance matrix
end
tmp2 = dist2.^(-2/(expo2-1));
V_new = tmp2./(sum(tmp2,2)*ones(1,size(data,2)));

