function [ feature_vectors ] = get_feature_vectors_of_regions_of_image(I,mask)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

    unique_regions = unique(mask(:));
    unique_regions = unique_regions(unique_regions > 0);
    
    num_of_regions = length(unique_regions);
    
    feature_vectors = zeros(num_of_regions,65);
    for j = 1 : length(unique_regions)
        region_mask = zeros(size(mask));
        region_mask( mask == unique_regions(j)) = 1;
        feature_vectors(j,:) = get_feature_vector_of_region(I,region_mask) ;
        %fprintf('Finished Region %d of Image %d\n', j, i);
        
      
        
        
        
        
    end

end

