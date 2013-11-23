function [ cluster_membership, centroids ] = cluster_regions( number_of_clusters,feature_vectors,max_iterations )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

opts = statset('Display','iter','MaxIter',max_iterations);
[ cluster_membership, centroids ] = kmeans(feature_vectors,number_of_clusters,'Options',opts);


%[grid_fcm_center, grid_fcm_U, grid_fcm_obj_fcn] = fcm(Grid_Feature_Vectors_Without_Keywords,300);

end

