Feature_Vectors_Optimized = zeros(num_of_all_training_regions, 65);

for i=1:num_of_all_training_regions
    Feature_Vectors_Optimized(i,1:9) = Feature_Vectors(i,1:9);
    
    Feature_Vectors_Optimized(i,10:33) = sum(reshape(Feature_Vectors(i,10:201), [], 24));
    
    Feature_Vectors_Optimized(i,34:65) = sum(reshape(Feature_Vectors(i,202:457), [], 32));
    
    
    
    
end