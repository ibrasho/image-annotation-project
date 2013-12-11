%[ CFCMRM_7_recall,CFCMRM_7_precision ] = measureRecallAndPrecision(CFCMRM_captions_of_testing_images, testing_image_keywords,7 );
%[ FCMRM_7_recall,FCMRM_7_precision ] = measureRecallAndPrecision(FCMRM_captions_of_testing_images, testing_image_keywords,7 );

[ CFCMRM_5_recall300,CFCMRM_5_precision300 ] = measureRecallAndPrecision(CFCMRM300_captions_of_testing_images, testing_image_keywords,5 );
[ FCMRM_5_recall300,FCMRM_5_precision300 ] = measureRecallAndPrecision(FCMRM300_captions_of_testing_images, testing_image_keywords,5 );
[ TFCMRM_5_recall300,TFCMRM_5_precision300 ] = measureRecallAndPrecision(TFCMRM300_captions_of_testing_images, testing_image_keywords,5 );


%[ CFCMRM_x_recall,CFCMRM_x_precision ] = measureRecallAndPrecisionWithoutNumber(CFCMRM_captions_of_testing_images, testing_image_keywords );
%[ FCMRM_x_recall,FCMRM_x_precision ] = measureRecallAndPrecisionWithoutNumber(FCMRM_captions_of_testing_images, testing_image_keywords);