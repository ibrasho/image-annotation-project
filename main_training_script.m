number_of_images = L;
feature_vector_dimension = 457; %To be specified
Feature_Vectors = zeros(num_of_all_training_regions,feature_vector_dimension+1); % we add one to append the image the region belongs to
%image_name = '';
index = 1;
for i = 1 : number_of_images
    image_name = strcat(num2str(training_masks_num(i,2)),'.jpg');
    image = imread(image_name);
    
    mask = training_masks_values_sorted{i};
    
    J = imresize(image, size(mask));
    
    unique_regions = unique(mask(:));
    unique_regions = unique_regions(unique_regions > 0);
    
    num_of_regions = length(unique_regions);
    
    for j = 1 : length(unique_regions)
        region_mask = zeros(size(mask));
        region_mask( mask == unique_regions(j)) = 1;
        Feature_Vectors(index,:) = [ get_feature_vector_of_region(J,region_mask) , training_masks_num(i,2) ] ;
        fprintf('Finished Region %d of Image %d\n', j, i);
        
        index = index + 1;
    end
end