function [ feature_vector ] = get_feature_vector_of_region(J,region_mask)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

    %feature_vector = [ getImageCm_2(J,region_mask)', ROI_hist(J,region_mask, 64)', CSD_gray(J,region_mask) ]; 
    
    feature_vector = [ getImageCm_2(J,region_mask)', ROI_hist(J,region_mask, 64), CSD_gray(J,region_mask) ]; 

end

