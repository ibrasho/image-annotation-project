function [ PwJ_MLE,PwJ_GRE  ,  PbJ_MLE,PbJ_GRE] = grid_generate_CMRM( image_names,images_keywords,number_of_clusters,cluster_membership,number_of_words )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

    number_of_images = length(image_names);

    PwJ_MLE = zeros(number_of_images,number_of_words); % MLE: Maximum Likelihood Estimator
    PbJ_MLE = zeros(number_of_images,number_of_clusters); % MLE: Maximum Likelihood Estimator

    PwJ_GRE = zeros(number_of_images,number_of_words); % GRE: General Relative Frequency
    PbJ_GRE = zeros(number_of_images,number_of_clusters); % GRE: General Relative Frequency

    T = number_of_images;

    %for all w and J Compute P(w|J); according to the CMRM (Cross Media Relvance Model)
    for i = 1 : number_of_images
        num_of_words_in_image_i = length(find(images_keywords(i,:) > 0));      

        for j = 1 : number_of_words
            is_word_j_included_in_image_i_captions = ismember(j,images_keywords(i,:));
            PwJ_MLE(i,j) = is_word_j_included_in_image_i_captions / num_of_words_in_image_i;
        
            occur_of_word_j_in_T = length(images_keywords(images_keywords == j));
            PwJ_GRE(i,j) = occur_of_word_j_in_T / T;
        end
    
        fprintf('Finished Image %d \n', i);
    end

    % for all b and J Compute P(b|J); according to the CMRM (Cross Media Relvance Model)
    for i = 1 : number_of_images
        blobs_of_image_i = cluster_membership(24*(i-1)+1:i*24);
        num_of_unique_blobs_in_image_i = length(unique(blobs_of_image_i));

        for j = 1 : number_of_clusters
            occur_b_J = length( blobs_of_image_i( blobs_of_image_i == j) );
            PbJ_MLE(i,j) = occur_b_J / num_of_unique_blobs_in_image_i;
           
            occur_of_b_T = length ( cluster_membership (cluster_membership==j) );
            PbJ_GRE(i,j) = occur_of_b_T / T;
        end
    
        fprintf('Finished Image %d \n', i);
    end

end