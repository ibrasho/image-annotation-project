function [cMoments] = getImageCMoments( image )
% FUNCTION [CMOMENTS] = COLORMOMENTS(IMAGE)
% image: Image in any format (Three-Dimensional matrix)
% CMoments: Three moments for each channel

    [row, col, channel] = size( image );
    
    if channel==1 % Single vector input
        channel = col;
        col = 1;
    end
    
    cMoments = zeros( channel * 3, 1);

    for i=1:channel
        if col ~= 1
            cMoments((i-1) * 3 + 1:i * 3) = Moments( reshape( image(:,:,i), row * col, 1 ) );
        else
            cMoments((i-1) * 3 + 1:i * 3) = Moments( image(:,i) );
        end
    end
end