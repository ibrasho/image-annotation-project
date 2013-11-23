
number_of_images = L;
grid_feature_vector_dimension = 15; %To be specified
Grid_Feature_Vectors = zeros(24*number_of_images,grid_feature_vector_dimension+1); % we add one to append the image the region belongs to
%image_name = '';

find_features_of_grid = @(block_struct) get_feature_vector_of_grid(block_struct.data);

for i = 1 : number_of_images
    image_name = strcat(num2str(training_masks_num(i,2)),'.jpg');
    image = imread(image_name);
    [row, col, channel] = size(image);
    
    if col >= row
        
        tmp = blockproc(image,[floor(min(row, col)/4), floor(max(row, col)/6)],find_features_of_grid); % function to be specified
        tmp = reshape(tmp,[],grid_feature_vector_dimension);
        tmp = tmp(1:24,:);
        
    else
        
        tmp = blockproc(image,[floor(max(row, col)/6), floor(min(row, col)/4)],find_features_of_grid); % function to be specified
        tmp = reshape(tmp,[],grid_feature_vector_dimension);
        tmp = tmp(1:24,:);
        
    end

    tmp(:,16) = i; %appends the image number to all visterms that belong to it
    
    Grid_Feature_Vectors(24*(i-1)+1:i*24,:) = tmp;
    
    fprintf('Finished Image %d\n', i);
        
      
    
    
    
end