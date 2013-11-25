function [ PwI ] = seg_generate_keywords( I,I_mask, centroids, PwJ_MLE,PwJ_GRE  ,  PbJ_MLE,PbJ_GRE , alpha, beta ,number_of_words )
%UNTITLED2 Summary of this function goes here
%   D:  dimension of the feature vector



resized_I = imresize(I, size(I_mask));
image_I_regions_features = get_feature_vectors_of_regions_of_image(resized_I,I_mask);
blobs = knnsearch(centroids,image_I_regions_features);

PwI = zeros(number_of_words,1);

PwJ = (1-alpha)*PwJ_MLE + alpha*PwJ_GRE;
PbJ = (1-beta)*PbJ_MLE + beta*PbJ_GRE;

for i = 1 : number_of_words
   PwI(i) = prod(PbJ(:,blobs),2)' * PwJ(:,i);   
end

    
end

