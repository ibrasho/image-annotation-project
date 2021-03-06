function [ PwJ_MLE, PwJ_GRE, PbJ_MLE, PbJ_GRE ] = generateFCMRM( image_names, images_keywords, number_of_clusters, memberships, number_of_words )

    number_of_images = length(image_names);

    % MLE: Maximum Likelihood Estimator
    PwJ_MLE = zeros( number_of_images, number_of_words );
    PbJ_MLE = zeros( number_of_images, number_of_clusters );

    % GRE: General Relative Frequency
    PwJ_GRE = zeros( number_of_images, number_of_words );
    PbJ_GRE = zeros( number_of_images, number_of_clusters );

    T = number_of_images;

    %for all w and J: compute P(w|J) according to the CMRM (Cross Media Relvance Model)
    for i = 1:number_of_images
        num_of_words_in_image_i = length( find(images_keywords(i,:) > 0));
        for j = 1 : number_of_words
            is_J_in_I_captions = ismember( j, images_keywords(i,:) );
            PwJ_MLE(i,j) = is_J_in_I_captions / num_of_words_in_image_i;
            
            occur_of_word_j_in_T = length( images_keywords(images_keywords == j) );
            PwJ_GRE(i,j) = occur_of_word_j_in_T / T;
        end
        fprintf('Finished image: %d \n', i);
    end

    % for all b and J: compute P(b|J) according to the CMRM (Cross Media Relvance Model)
    for i = 1:number_of_images
        for j = 1:number_of_clusters
            fuzzy_occur_of_b_in_J = sum( memberships(j,24*(i-1)+1:i*24) );
            PbJ_MLE(i,j) = fuzzy_occur_of_b_in_J;
            
            occur_of_b_T = sum( memberships(j,:) );
            PbJ_GRE(i,j) = occur_of_b_T / T;
        end
        fprintf('Finished image: %d \n', i);
    end
end