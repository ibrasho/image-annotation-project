function [ feature_vectors ] = getFeatureVectorsOfImageRegions( image, mask )
    unique_regions = unique( mask(:) );
    unique_regions = unique_regions( unique_regions > 0 );
    
    num_of_regions = length( unique_regions );
    
    feature_vectors = zeros(num_of_regions,65);
    for j = 1:length(unique_regions)
        region_mask = zeros(size(mask));
        region_mask(mask == unique_regions(j)) = 1;
        feature_vectors(j,:) = getFeatureVectorOfRegion( image, region_mask );
    end
end

