% generate_keywords This function generates keywords for a given unannotated
% Image I


% read Image from File and segment it then find the feature vector of each
% region and figure each regions blob

% I = imread ...

% resized_I = imresize(I, size(I_mask)); I don't have to resize in grid world ^_^ 
tmp_I = I;

[row, col, channel] = size(tmp_I);
    
if col >= row
    tmp = blockproc(tmp_I,[floor(min(row, col)/4), floor(max(row, col)/6)],find_features_of_grid);
else
    tmp = blockproc(tmp_I,[floor(max(row, col)/6), floor(min(row, col)/4)],find_features_of_grid);
end

tmp = reshape(tmp,[],grid_feature_vector_dimension);
tmp = tmp(1:24,:);

grid_Regions_Features = tmp;
visterms = knnsearch(grid_kmeans_C,grid_Regions_Features);

grid_PwI = zeros(number_of_words,1);
alpha = 0.1;
beta = 0.7;
grid_PwJ = (1-alpha)*grid_PwJ_MLE + alpha*grid_PwJ_GRE;
grid_PbJ = (1-beta)*grid_PbJ_MLE + beta*grid_PbJ_GRE;

for i = 1 : number_of_words
%     size(sum(grid_PbJ(:,visterms),2))
%     size(grid_PwJ(:,i))
    
%     if ismember(i,list_of_non_occuring_words)
%     	grid_PwI(i) = -1;
%         continue
%     end
    
   grid_PwI(i) = prod(grid_PbJ(:,visterms),2)' * grid_PwJ(:,i);
   
   grid_PwI = grid_PwI / T;
    
%    fprintf('Finished Word %d \n', i);
end
