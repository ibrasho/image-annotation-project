FCMRM_captions_of_testing_images = zeros(number_of_testing_images,10);

for i = 1:number_of_testing_images
    testing_image_name = strcat( '../testing/', num2str( testing_image_names(i) ), '.jpg' );
    testing_image = imread(testing_image_name);
    
    Q_FCMRM = getKeywords( testing_image, centroids, PwJ_MLE, PwJ_GRE, PbJ_MLE, PbJ_GRE, 0.1, 0.7, 15, number_of_words );
    
    [~, annotations] = sort( Q_FCMRM, 'descend' );
    FCMRM_captions_of_testing_images(i,:) = annotations(1:10);
    
    fprintf('Finished Image %d\n', i);   
end
    
    
    
    