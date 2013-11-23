function [ feature_vector ] = get_feature_vector_of_grid(grid_element)
%GET_FEATURE_VECTOR_OF_GRID A function that takes a grid element of an
%image and return its feature vectors.
%   The features etracted by this function are: the standard deviation and
%   skewness of the RGB values; and the mean, standard deviation and
%   skewness of the L*A*B values. That makes it generates a 15-D vector (
%   15 moment, each moments dimension is one).

    %feature_vector = [ getImageCm_2(J,region_mask)', ROI_hist(J,region_mask, 64)', CSD_gray(J,region_mask) ]; 
    RGB_moments = getImageCm(grid_element);
    RGB_moments = RGB_moments([2 3 5 6 8 9]); % execlude the average (mean) of RGB values
    cform = makecform('srgb2lab');
    LAB_grid_element = applycform(grid_element,cform);
    feature_vector = [ RGB_moments' , getImageCm(LAB_grid_element)' ]; 

end

