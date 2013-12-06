[ CFCMRM_7_recall,CFCMRM_7_precision ] = measureRecallAndPrecision(CFCMRM_captions_of_testing_images, testing_image_keywords,7 );
[ FCMRM_7_recall,FCMRM_7_precision ] = measureRecallAndPrecision(FCMRM_captions_of_testing_images, testing_image_keywords,7 );

%[ CFCMRM_x_recall,CFCMRM_x_precision ] = measureRecallAndPrecisionWithoutNumber(CFCMRM_captions_of_testing_images, testing_image_keywords );
%[ FCMRM_x_recall,FCMRM_x_precision ] = measureRecallAndPrecisionWithoutNumber(FCMRM_captions_of_testing_images, testing_image_keywords);