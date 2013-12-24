% [ memberships_300_12, centroids_300_12 ] = clusterRegions( features_vector(:, 1:15), 300, 1.2 );
% [ memberships_300_15, centroids_300_15 ] = clusterRegions( features_vector(:, 1:15), 300, 1.5 );
% [ memberships_300_175, centroids_300_175 ] = clusterRegions( features_vector(:, 1:15), 300, 1.75 );
% [ memberships_300_20, centroids_300_20 ] = clusterRegions( features_vector(:, 1:15), 300, 2 );

% [ PwJ_MLE_300_12, PwJ_GRE_300_12, PbJ_MLE_300_12, PbJ_GRE_300_12 ] = generateFCMRM( image_names, images_keywords, 300, memberships_300_12, number_of_words );
% [ PwJ_MLE_300_15, PwJ_GRE_300_15, PbJ_MLE_300_15, PbJ_GRE_300_15 ] = generateFCMRM( image_names, images_keywords, 300, memberships_300_15, number_of_words );
% [ PwJ_MLE_300_175, PwJ_GRE_300_175, PbJ_MLE_300_175, PbJ_GRE_300_175 ] = generateFCMRM( image_names, images_keywords, 300, memberships_300_175, number_of_words );
% [ PwJ_MLE_300_20, PwJ_GRE_300_20, PbJ_MLE_300_20, PbJ_GRE_300_20 ] = generateFCMRM( image_names, images_keywords, 300, memberships_300_20, number_of_words );

[ memberships_225_12, centroids_225_12 ] = clusterRegions( features_vector(:, 1:15), 225, 1.2 );
[ memberships_250_12, centroids_250_12 ] = clusterRegions( features_vector(:, 1:15), 250, 1.2 );
[ memberships_275_12, centroids_275_12 ] = clusterRegions( features_vector(:, 1:15), 275, 1.2 );
[ memberships_325_12, centroids_325_12 ] = clusterRegions( features_vector(:, 1:15), 325, 1.2 );
[ memberships_350_12, centroids_350_12 ] = clusterRegions( features_vector(:, 1:15), 350, 1.2 );
[ memberships_375_12, centroids_375_12 ] = clusterRegions( features_vector(:, 1:15), 375, 1.2 );
[ memberships_400_12, centroids_400_12 ] = clusterRegions( features_vector(:, 1:15), 400, 1.2 );
[ memberships_425_12, centroids_425_12 ] = clusterRegions( features_vector(:, 1:15), 425, 1.2 );

[ PwJ_MLE_225_12, PwJ_GRE_225_12, PbJ_MLE_225_12, PbJ_GRE_225_12 ] = generateFCMRM( image_names, images_keywords, 225, memberships_225_12, number_of_words );
[ PwJ_MLE_250_12, PwJ_GRE_250_12, PbJ_MLE_250_12, PbJ_GRE_250_12 ] = generateFCMRM( image_names, images_keywords, 250, memberships_250_12, number_of_words );
[ PwJ_MLE_275_12, PwJ_GRE_275_12, PbJ_MLE_275_12, PbJ_GRE_275_12 ] = generateFCMRM( image_names, images_keywords, 275, memberships_275_12, number_of_words );
[ PwJ_MLE_300_12, PwJ_GRE_300_12, PbJ_MLE_300_12, PbJ_GRE_300_12 ] = generateFCMRM( image_names, images_keywords, 300, memberships_300_12, number_of_words );
[ PwJ_MLE_325_12, PwJ_GRE_325_12, PbJ_MLE_325_12, PbJ_GRE_325_12 ] = generateFCMRM( image_names, images_keywords, 325, memberships_325_12, number_of_words );
[ PwJ_MLE_350_12, PwJ_GRE_350_12, PbJ_MLE_350_12, PbJ_GRE_350_12 ] = generateFCMRM( image_names, images_keywords, 350, memberships_350_12, number_of_words );
[ PwJ_MLE_375_12, PwJ_GRE_375_12, PbJ_MLE_375_12, PbJ_GRE_375_12 ] = generateFCMRM( image_names, images_keywords, 375, memberships_375_12, number_of_words );
[ PwJ_MLE_400_12, PwJ_GRE_400_12, PbJ_MLE_400_12, PbJ_GRE_400_12 ] = generateFCMRM( image_names, images_keywords, 400, memberships_400_12, number_of_words );
[ PwJ_MLE_425_12, PwJ_GRE_425_12, PbJ_MLE_425_12, PbJ_GRE_425_12 ] = generateFCMRM( image_names, images_keywords, 425, memberships_425_12, number_of_words );
