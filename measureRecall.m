function [ output_args ] = measureRecallAndPrecision(CMRM_captions, real_captions )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

num_of_images = size(CMRM_captions,1);
recall = zeros(1,num_of_images);

for i = 1:num_of_images
num_of_words_in_image_i = length(find(real_captions(i,:) > 0));
related_intersect_relevant = intersect(CMRM_captions(i,:), real_captions(i,:))

end

