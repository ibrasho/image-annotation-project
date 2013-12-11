function [ PwI ] = getKeywords( image, centroids, PwJ_MLE, PwJ_GRE, PbJ_MLE, PbJ_GRE, alpha, beta, D, word_count )
    % getKeywords Get the keywords suitable to image I according to the
    % CMRM provided
    % D: dimension of the feature vector
    % word_count: the number of words

    find_features_of_grid = @(block_struct) getFeatureVectorGrid( block_struct.data );

    [row, col, ~] = size(image);

    if col >= row
        tmp = blockproc( image, [floor( min( row, col ) / 4 ), floor( max( row, col ) / 6 )], find_features_of_grid );
    else
        tmp = blockproc( image, [floor( max( row, col ) / 6 ), floor( min( row, col ) / 4 )], find_features_of_grid );
    end

    tmp = reshape( tmp, [], D);
    tmp = tmp(1:24, :);

    image_I_regions = tmp;
    
    visterms = knnsearch( centroids, image_I_regions );

    PwI = zeros( word_count, 1 );

    PwJ = (1 - alpha) * PwJ_MLE + alpha * PwJ_GRE;
    PbJ = (1 - beta) * PbJ_MLE + beta * PbJ_GRE;

    for i = 1 : word_count
       PwI(i) = prod( PbJ( :, visterms ), 2)' * PwJ(:, i);
    end

end