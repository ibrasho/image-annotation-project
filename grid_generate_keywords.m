function [ PwI ] = grid_generate_keywords( I, centroids, PwJ_MLE,PwJ_GRE  ,  PbJ_MLE,PbJ_GRE , alpha, beta )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here


find_features_of_grid = @(block_struct) get_feature_vector_of_grid(block_struct.data);

[row, col, ~] = size(I);
    
if col >= row     
    tmp = blockproc(I,[floor(min(row, col)/4), floor(max(row, col)/6)],find_features_of_grid);      
else      
    tmp = blockproc(I,[floor(max(row, col)/6), floor(min(row, col)/4)],find_features_of_grid);       
end

tmp = reshape(tmp,[],grid_feature_vector_dimension);
tmp = tmp(1:24,:);

image_I_regions = tmp;
visterms = knnsearch(centroids,image_I_regions);

PwI = zeros(number_of_words,1);

PwJ = (1-alpha)*PwJ_MLE + alpha*PwJ_GRE;
PbJ = (1-beta)*PbJ_MLE + beta*PbJ_GRE;

for i = 1 : number_of_words

   PwI(i) = prod(PbJ(:,visterms),2)' * PwJ(:,i);   
end

    
end

