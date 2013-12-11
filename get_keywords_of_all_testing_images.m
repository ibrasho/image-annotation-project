
CFCMRM_captions_of_testing_images = zeros(number_of_testing_images,10);
FCMRM_captions_of_testing_images = zeros(number_of_testing_images,10);

for i = 1:number_of_testing_images
    testing_image_name = strcat( '../testing/', num2str( testing_image_names(i) ), '.jpg' );
    testing_image = imread(testing_image_name);
    
    Q_CFCMRM = getKeywords( testing_image, fcenter, cfPwJ_MLE, cfPwJ_GRE, cfPbJ_MLE, cfPbJ_GRE, 0.1, 0.7, 15, number_of_words );
    Q_FCMRM = getKeywords( testing_image, fcenter,  fPwJ_MLE,  fPwJ_GRE,  fPbJ_MLE,  fPbJ_GRE, 0.1, 0.7, 15, number_of_words );
    
    [~, tmp2_IDX] = sort( Q_CFCMRM, 'descend' );
    CFCMRM_captions_of_testing_images(i,:) = tmp2_IDX(1:10);
    
    [~, tmp2_IDX] = sort( Q_FCMRM, 'descend' );
    FCMRM_captions_of_testing_images(i,:) = tmp2_IDX(1:10);

    fprintf('Finished Image %d\n', i);   

end
    
    
    
    