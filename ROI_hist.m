function [Histogram] = ROI_hist(InputImage, Mask, M)
% FUNCTION [Histogram] = ROI_hist(INPUTIMAGE,Mask)
% InputImage: Image in any format (Three-Dimensional matrix)
% Mask: A binary mask specifying the region
% M: Number of bins in the histogram
% Histogram: A histogram for each channel


Histogram = zeros(3,M);

%Mask = Mask & Mask; %converts all nonzero values to one

for i=1:3
        temp = InputImage(:,:,i);
        Histogram(i,:) = hist(double(temp(Mask~=0)),M);
end

Histogram = Histogram(:);


%new addition to make number of bins equal to 24
Histogram = Histogram(:)';

Histogram = sum(reshape(Histogram, [], 24));