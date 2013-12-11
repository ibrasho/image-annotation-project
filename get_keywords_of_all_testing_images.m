
%CFCMRM_captions_of_testing_images = zeros(number_of_testing_images,10);
%FCMRM_captions_of_testing_images = zeros(number_of_testing_images,10);

CFCMRM300_captions_of_testing_images = zeros(number_of_testing_images,10);
FCMRM300_captions_of_testing_images = zeros(number_of_testing_images,10);

TFCMRM300_captions_of_testing_images = zeros(number_of_testing_images,10);

for i=1:number_of_testing_images
    testing_image_name = strcat(num2str(testing_image_names(i)),'.jpg');
    testing_image = imread(testing_image_name);
    
    
    
    %Q_CFCMRM = getKeywords( testing_image, fCenter12, cfPwJ_MLE12, cfPwJ_GRE12, cfPbJ_MLE12, cfPbJ_GRE12, 0.1, 0.7, 15, number_of_words );
    %Q_FCMRM = getKeywords( testing_image, fCenter12,  fPwJ_MLE12,  fPwJ_GRE12,  fPbJ_MLE12,  fPbJ_GRE12, 0.1, 0.7, 15, number_of_words );
    
    
    Q_CFCMRM = getKeywords( testing_image, fCenter12300, cfPwJ_MLE12300, cfPwJ_GRE12300, cfPbJ_MLE12300, cfPbJ_GRE12300, 0.1, 0.7, 15, number_of_words );
    Q_FCMRM = getKeywords(  testing_image, fCenter12300,  fPwJ_MLE12300,  fPwJ_GRE12300,  fPbJ_MLE12300,  fPbJ_GRE12300, 0.1, 0.7, 15, number_of_words );
    Q_TFCMRM = getKeywords(  testing_image, fCenter12300,  tfPwJ_MLE12300,  tfPwJ_GRE12300,  tfPbJ_MLE12300,  tfPbJ_GRE12300, 0.1, 0.7, 15, number_of_words );

    [~, tmp2_IDX] = sort( Q_CFCMRM, 'descend' );
    %CFCMRM_captions_of_testing_images(i,:) = tmp2_IDX(1:10);
    CFCMRM300_captions_of_testing_images(i,:) = tmp2_IDX(1:10);

    [~, tmp2_IDX] = sort( Q_FCMRM, 'descend' );
    %FCMRM_captions_of_testing_images(i,:) = tmp2_IDX(1:10);
    FCMRM300_captions_of_testing_images(i,:) = tmp2_IDX(1:10);
    
    [~, tmp2_IDX] = sort( Q_TFCMRM, 'descend' );
    TFCMRM300_captions_of_testing_images(i,:) = tmp2_IDX(1:10);

    fprintf('Finished Image %d\n', i);   
    
    

    


end
    
    
    
    