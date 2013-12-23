function [ PwJ_MLE, PwJ_GRE, PbJ_MLE, PbJ_GRE ] = generateThresholdFCMRM( image_names, images_keywords, number_of_clusters, fuzzy_membership, number_of_words, threshold )
%UNTITLED4 Summary of this function goes here
% Detailed explanation goes here

    number_of_images = length(image_names);

    PwJ_MLE = zeros( number_of_images, number_of_words );
    PbJ_MLE = zeros( number_of_images, number_of_clusters );

    PwJ_GRE = zeros( number_of_images, number_of_words );
    PbJ_GRE = zeros( number_of_images, number_of_clusters );

    T = number_of_images;

    %for all w and J Compute P(w|J); according to the CMRM (Cross Media Relvance Model)
    for i = 1 : number_of_images
        num_of_words_in_image_i = length( find(images_keywords(i,:) > 0));
        for j = 1 : number_of_words
            is_word_j_included_in_image_i_captions = ismember( j, images_keywords(i,:) );
            PwJ_MLE(i,j) = is_word_j_included_in_image_i_captions / num_of_words_in_image_i;
            occur_of_word_j_in_T = length( images_keywords(images_keywords == j) );
            PwJ_GRE(i,j) = occur_of_word_j_in_T / T;
        end
        fprintf('Finished Image %d \n', i);
    end

    % for all b and J Compute P(b|J); according to the CMRM (Cross Media Relvance Model)
    for i = 1 : number_of_images
        for j = 1 : number_of_clusters
            temp = fuzzy_membership(j,24*(i-1)+1:i*24);
            fuzzy_occur_of_b_in_J_above_thresh = temp( temp >= threshold);
            PbJ_MLE(i,j) = sum(fuzzy_occur_of_b_in_J_above_thresh) / length(fuzzy_occur_of_b_in_J_above_thresh);
            occur_of_b_T = sum( fuzzy_membership(j,:) );
            PbJ_GRE(i,j) = occur_of_b_T / T;
        end
        fprintf('Finished Image %d \n', i);
    end
end