function [ histogram ] = CSD_gray( input, mask )

    gray_image = rgb2gray(input);
    [ row, col ] = size( gray_image );
    masked_gray_image = zeros(row, col);

    for a = 1:row
        for b = 1:col
            if mask(a,b) == 0
                masked_gray_image(a,b) = -1;
            else
                masked_gray_image(a,b) = gray_image(a,b);
            end
        end
    end

    histogram = zeros(1,256);

    for i = 1:(row-7)
        for j = 1:8:(col-7)
            temp = unique( gray_image(i:i+7,j:j+7) );
            temp = temp(temp ~= -1) + 1;
            histogram(temp) = histogram(temp) + 1;
        end
    end

    %new addition to make number of bins equal to 32
    histogram = sum(reshape(histogram, [], 32));
end