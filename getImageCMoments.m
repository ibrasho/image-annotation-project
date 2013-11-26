function [cMoments] = getImageCMoments( Image )
% FUNCTION [CMOMENTS] = COLORMOMENTS(IMAGE)
% InputImage: Image in any format (Three-Dimensional matrix)
% CMoments: Three moments for each channel

[row, col, channel] = size( Image );
if channel==1 % Single vector input
    channel = col;
    col = 1;
end
cMoments = zeros( channel * 3, 1);

for i=1:channel
    if col ~= 1
        cMoments((i-1) * 3 + 1:i * 3) = Moments( reshape( Image(:,:,i), row * col, 1 ) );
    else
        cMoments((i-1) * 3 + 1:i * 3) = Moments( Image(:,i) );
    end
end


% To perform on HSV Regions set InputImage to Nx1x3 where N is number of
% pixels in region and 3 is HSV channels.  This allows a single region
% vector.
