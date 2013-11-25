function [ S_Feature_Vectors ] = seg_training( image_names,images_masks,num_of_regions, L, D )
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
%   images_masks: a cell array containing the segmentation masks of all
%   images. size of image_masks must be the same as the size of image_names
%
%   L: indicates the number of images in the training set 
%
%   D: dimension of the feature vector of a region
%
%   

%D = 15; %feature vector dimension
S_Feature_Vectors = zeros(num_of_regions,D+1); % we add one to append the image the region belongs to
index = 1;


for i = 1 : L
    
    image_name = strcat(num2str(image_names),'.jpg');
    image = imread(image_name);
    
    mask = images_masks{i};
    
    J = imresize(image, size(mask));
    
    unique_regions = unique(mask(:));
    unique_regions = unique_regions(unique_regions > 0);
    
    num_of_regions = length(unique_regions);
    
    for j = 1 : num_of_regions
        region_mask = zeros(size(mask));
        region_mask( mask == unique_regions(j)) = 1;
        S_Feature_Vectors(index,:) = [ get_feature_vectors_of_regions_of_image(J,region_mask) , training_masks_num(i,2) ] ;
        index = index + 1;       
    end
    
    fprintf('Finished Image %d\n', i);   

end

    


end

