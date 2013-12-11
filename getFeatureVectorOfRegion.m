function [ feature_vector ] = getFeatureVectorOfRegion( J, region_mask )

    feature_vector = [ getImageCm_2( J, region_mask )', ROI_hist( J, region_mask, 64 ), CSD_gray( J, region_mask ) ]; 

end

