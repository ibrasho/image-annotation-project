number_of_words = length(words);
PwJ_MLE_2 = zeros(number_of_images,number_of_words);
%PwJ_GRE = zeros(number_of_images,number_of_words); % GRE: General Relative Frequency
for i = 1 : number_of_images
    for j = 1 : number_of_words
        
        image_i_number = training_masks_num(i,2);
        
        num_of_word_j_in_image_i = length(find(documentwords(image_nums==image_i_number,:) > 0));
        
        %num_of_blobs_in_image_i = length(find(mapping_of_reg_to_images == image_i_number));
        
        num_of_blobs_in_image_i = length(unique(kmeans_IDX(mapping_of_reg_to_images == image_i_number)));
        
        is_word_j_included_in_image_i_captions = ismember(j,find(documentwords(image_nums==image_i_number,:) > 0));
        
        PwJ_MLE_2(i,j) = is_word_j_included_in_image_i_captions / (num_of_word_j_in_image_i + num_of_blobs_in_image_i);
        
        continue;
        
        %sum(documentwords(documentwords == j))
        
        occur_of_word_j_in_T = length(documentwords(documentwords == j));
        
        T = number_of_images;
        
        PwJ_GRE(i,j) = occur_of_word_j_in_T / T;
        
        
        
    end
    fprintf('Finished Image %d \n', i);
end


