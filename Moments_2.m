function [FeatureMoments] = Moments_2(FeatureVector)
% FUNCTION [FEATUREMOMENTS] = MOMENTS(FEATUREVECTOR)
% FeatureVector: 1 Dimensional Vector to determine moments
% FeatureMoments: Three moments of FeatureVector

FeatureMoments = zeros(3,1);

if isempty(FeatureVector)
    error('Invalid FeatureVector in Moments.  Size must be greater then 0.');
end
if size(FeatureVector,1) ~=1 && size(FeatureVector,2)~=1
    error('Invalid FeatureVector in Moments.  FeatureVector must be One dimensional.');
end

% Moment 1 is the mean of the vector
FeatureMoments(1) = mean(FeatureVector);

% Moment 2 is the std. of the vector
FeatureMoments(2) = std(FeatureVector);

% Moment three
FeatureMoments(3) = nthroot(sum(((FeatureVector-FeatureMoments(1)).^3))./length(FeatureVector),3);