number_of_blobs = 410;
grid_PbJ_MLE = zeros(number_of_images,number_of_blobs);
grid_PbJ_GRE = zeros(number_of_images,number_of_blobs); % GRE: General Relative Frequency
for i = 1 : number_of_images
    image_i_number = training_masks_num(i,2);
    for j = 1 : number_of_blobs
        
        
        
        num_of_word_j_in_image_i = length(find(documentwords(image_nums==image_i_number,:) > 0));
        num_of_blobs_in_image_i = length(unique(grid_kmeans_IDX(mapping_of_reg_to_images == image_i_number)));
        length_J = (num_of_word_j_in_image_i + num_of_blobs_in_image_i);
                
        blobs_of_image_i = grid_kmeans_IDX(mapping_of_reg_to_images == image_i_number);
        
        occur_b_J = length( blobs_of_image_i( blobs_of_image_i == j) );
        
        
        grid_PbJ_MLE(i,j) = occur_b_J / length_J;
        
        
        
        occur_of_b_T = length ( grid_kmeans_IDX (grid_kmeans_IDX==j) );
        T = number_of_images;
        
        grid_PbJ_GRE(i,j) = occur_of_b_T / T;
        
        
        
    end
    fprintf('Finished Image %d \n', i);
end
