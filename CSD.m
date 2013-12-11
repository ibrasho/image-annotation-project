function [ histogram ] = CSD( image )

    % Get the size of the input image
    [row, col, ~] = size( image );

    histogram_R = zeros(1,256);
    histogram_G = zeros(1,256);
    histogram_B = zeros(1,256);

    % Mask = Mask & Mask;
    % Converts all nonzero values to one

    for i=1:(row-7)
        for j=1:(col-7)
            % What does this exactly do?
            temp1 = unique( image(i:i+7, j:j+7, 1) ) + 1;
            temp2 = unique( image(i:i+7, j:j+7, 2) ) + 1;
            temp3 = unique( image(i:i+7, j:j+7, 3) ) + 1;
        
            histogram_R(temp1) = histogram_R(temp1) + 1;
            histogram_G(temp2) = histogram_G(temp2) + 1;
            histogram_B(temp3) = histogram_B(temp3) + 1;
        end
    end
    
    histogram = [ histogram_R; histogram_G; histogram_B ];
end

