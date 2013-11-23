function [CMoments] = getImageCm(InputImage)
% FUNCTION [CMOMENTS] = COLORMOMENTS(INPUTIMAGE)
% InputImage: Image in any format (Three-Dimensional matrix)
% CMoments: Three moments for each channel

[row, col, channel] = size(InputImage);
if channel==1 % Single vector input
    channel = col; col = 1;
end
CMoments = zeros(channel*3,1);

for i=1:channel
    if col ~= 1
        CMoments((i-1)*3+1:i*3) = Moments(reshape(InputImage(:,:,i),row*col,1));
    else
        CMoments((i-1)*3+1:i*3) = Moments(InputImage(:,i));
    end
end


% To perform on HSV Regions set InputImage to Nx1x3 where N is number of
% pixels in region and 3 is HSV channels.  This allows a single region
% vector.
