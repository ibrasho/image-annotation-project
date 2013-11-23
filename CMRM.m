%generate_keywords This function generates keywords for a given unannotated
%Image I


%read Image from File and segment it then find the feature vector of each
%region and figure each regions blob

%I = imread ...
resized_I = imresize(I, size(I_mask));
Regions_Features = get_feature_vectors_of_regions_of_image(resized_I,I_mask);
blobs = knnsearch(kmeans_C,Regions_Features);

PwI = zeros(number_of_words,1);
alpha = 0.1;
beta = 0.9;
PwJ = (1-alpha)*PwJ_MLE + alpha*PwJ_GRE;
PbJ = (1-beta)*PbJ_MLE + beta*PbJ_GRE; %NOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO IT SHOULD BE P(b)J_MLE and P(b)J_GRE
%NOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
%NOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
%NOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
%NOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO

for i = 1 : number_of_words
    %PwI(i,1) = i;
    %size(sum(PbJ(:,blobs),2))
    %size(PwJ(:,i))
    PwI(i) = sum(PbJ(:,blobs),2)' * PwJ(:,i);
    fprintf('Finished Word %d \n', i);
end
    

