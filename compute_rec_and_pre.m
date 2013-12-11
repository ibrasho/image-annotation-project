<<<<<<< HEAD
[ CFCMRM_7_recall, CFCMRM_7_precision, CFCMRM_7_fscore ] = calculatePerformanceMeasures( CFCMRM_captions_of_testing_images, testing_image_keywords, 7 );
[ FCMRM_7_recall, FCMRM_7_precision, FCMRM_7_fscore ] = calculatePerformanceMeasures(   FCMRM_captions_of_testing_images,  testing_image_keywords, 7 );

[ CFCMRM_4_recall, CFCMRM_4_precision, CFCMRM_6_fscore ] = calculatePerformanceMeasures( CFCMRM_captions_of_testing_images, testing_image_keywords, 4 );
[ FCMRM_4_recall, FCMRM_4_precision, FCMRM_6_fscore ] = calculatePerformanceMeasures(   FCMRM_captions_of_testing_images,  testing_image_keywords, 4 );

[ CFCMRM_5_recall, CFCMRM_5_precision, CFCMRM_5_fscore ] = calculatePerformanceMeasures( CFCMRM_captions_of_testing_images, testing_image_keywords, 5 );
[ FCMRM_5_recall, FCMRM_5_precision, FCMRM_5_fscore ] = calculatePerformanceMeasures(   FCMRM_captions_of_testing_images,  testing_image_keywords, 5 );

[ CFCMRM_6_recall, CFCMRM_6_precision, CFCMRM_4_fscore ] = calculatePerformanceMeasures( CFCMRM_captions_of_testing_images, testing_image_keywords, 6 );
[ FCMRM_6_recall, FCMRM_6_precision, FCMRM_4_fscore ] = calculatePerformanceMeasures(   FCMRM_captions_of_testing_images,  testing_image_keywords, 6 );

[ CFCMRM_3_recall, CFCMRM_3_precision, CFCMRM_3_fscore ] = calculatePerformanceMeasures( CFCMRM_captions_of_testing_images, testing_image_keywords, 3 );
[ FCMRM_3_recall, FCMRM_3_precision, FCMRM_3_fscore ] = calculatePerformanceMeasures(   FCMRM_captions_of_testing_images,  testing_image_keywords, 3 );

fprintf('\n\tCFCMRM\t\tFCMRM\t\tCFCMRM\t\tFCMRM\t\tCFCMRM\t\tFCMRM\n');
fprintf('Words\tRecall\t\tRecall\t\tPrecision\tPrecision\tF-score\t\tF-score\n');
fprintf('  3\t%f\t%f\t%f\t%f\t%f\t%f\n', CFCMRM_3_recall, FCMRM_3_recall, CFCMRM_3_precision, FCMRM_3_precision, CFCMRM_3_fscore, FCMRM_3_fscore);
fprintf('  4\t%f\t%f\t%f\t%f\t%f\t%f\n', CFCMRM_4_recall, FCMRM_4_recall, CFCMRM_4_precision, FCMRM_4_precision, CFCMRM_4_fscore, FCMRM_4_fscore);
fprintf('  5\t%f\t%f\t%f\t%f\t%f\t%f\n', CFCMRM_5_recall, FCMRM_5_recall, CFCMRM_5_precision, FCMRM_5_precision, CFCMRM_5_fscore, FCMRM_5_fscore);
fprintf('  6\t%f\t%f\t%f\t%f\t%f\t%f\n', CFCMRM_6_recall, FCMRM_6_recall, CFCMRM_6_precision, FCMRM_6_precision, CFCMRM_6_fscore, FCMRM_6_fscore);
fprintf('  7\t%f\t%f\t%f\t%f\t%f\t%f\n', CFCMRM_7_recall, FCMRM_7_recall, CFCMRM_7_precision, FCMRM_7_precision, CFCMRM_7_fscore, FCMRM_7_fscore);
fprintf('\n');

[ CFCMRM_5_recall, CFCMRM_5_precision ] = measureRecallAndPrecision( CFCMRM_captions_of_testing_images, testing_image_keywords, 5 );
[  FCMRM_5_recall,  FCMRM_5_precision ] = measureRecallAndPrecision(  FCMRM_captions_of_testing_images, testing_image_keywords, 5 );
[ TFCMRM_5_recall, TFCMRM_5_precision ] = measureRecallAndPrecision( TFCMRM_captions_of_testing_images, testing_image_keywords, 5 );
