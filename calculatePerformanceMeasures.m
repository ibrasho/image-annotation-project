function [ recall, precision, fscore ] = calculatePerformanceMeasures( CMRM_captions, real_captions, number_of_captions_of_importance )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

CMRM_captions = CMRM_captions(:,1:number_of_captions_of_importance);

num_of_images = size( CMRM_captions, 1);
recall = zeros( 1, num_of_images );
precision = zeros( 1, num_of_images );

for i = 1:num_of_images
    relevant_count = length( find( real_captions(i,:) > 0 ) );
    relevant = real_captions( i, 1:relevant_count );
    
    retrieved = CMRM_captions(i,:);
    retrieved_count = length( retrieved );
    
    retrieved_intersect_relevant = intersect( retrieved, relevant );
    retrieved_intersect_relevant_count = length( retrieved_intersect_relevant );

    recall(i) = retrieved_intersect_relevant_count / relevant_count;
    precision(i) = retrieved_intersect_relevant_count / retrieved_count;
end

recall = sum( recall ) / length( recall );
precision = sum( precision ) / length( precision );
fscore = 2 * (precision + recall) / (recall + precision);