function [ histogram ] = ROI_hist( input, mask, bins )
% FUNCTION [ histogram] = ROI_hist( input, mask, bins )
% input: Image in any format (3D matrix)
% mask: A binary mask specifying the region
% bins: Number of bins in the histogram


histogram = zeros(3,bins);

%Mask = Mask & Mask; %converts all nonzero values to one

    for i=1:3
        temp = input(:,:,i);
        histogram(i,:) = hist( double(temp(mask~=0)), bins);
    end

    histogram = histogram(:);

    %new addition to make number of bins equal to 24
    histogram = histogram(:)';
    histogram = sum( reshape(histogram, [], 24) ); 
end