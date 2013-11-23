function [ G_Feature_Vectors ] = grid_training( image_names, L, D )
%GRID_TRAINING: A function that takes a group of images and extract the
%feature vector with dimensionality D of each region in each image ( regions are extracted using
%a 6*4 grid) and returns a L*(D+1) matrix; where each row indicates the
%feature vector of a region and the image number that region belongs to.
%
%   image_names: A coloumn vector specifying the name of the images without
%   the extension (the extnesion is assumned to be '.jpg'). The image names
%   is also assumed to be numerical (alphabet characters are not allowed).
%   The location of the images in the file system e.g. "~/Images" should be
%   included in the MATLAB PATH.
%
%   L: indicates the number of images in the training set 

%D = 15; %feature vector dimension
G_Feature_Vectors = zeros(24*L,D+1); % we add one to append the image the region belongs to

find_features_of_grid = @(block_struct) get_feature_vector_of_grid(block_struct.data);


for i = 1 : L
    image_name = strcat(num2str(image_names(i)),'.jpg');
    image = imread(image_name);
    [row, col, ~] = size(image);
    
    %check if the image is horizontal or vertical
    if col >= row
        tmp = blockproc(image,[floor(min(row, col)/4), floor(max(row, col)/6)],find_features_of_grid);
    else
        
        tmp = blockproc(image,[floor(max(row, col)/6), floor(min(row, col)/4)],find_features_of_grid);      
    end
    
    tmp = reshape(tmp,[],D);
    tmp = tmp(1:24,:);

    tmp(:,D+1) = i; %appends the image number to all visterms that belong to it
    
    G_Feature_Vectors(24*(i-1)+1:i*24,:) = tmp;
    
    fprintf('Finished Image %d\n', i);   
end

end

