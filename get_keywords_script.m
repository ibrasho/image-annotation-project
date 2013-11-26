[file_name, file_path] = uigetfile( '*.jpg', 'Select the image', '../testing' );
I = imread( fullfile( file_path, file_name ) );

Q = generateKeywordsGrid( I, fcenter,       cfPwJ_MLE,    cfPwJ_GRE,    cfPbJ_MLE,    cfPbJ_GRE,    0.1, 0.7, 15, number_of_words );
% Q = generateKeywordsGrid( I, grid_kmeans_C, grid_PwJ_MLE, grid_PwJ_GRE, grid_PbJ_MLE, grid_PbJ_GRE, 0.1, 0.7, 15, number_of_words );

[tmp2, tmp2_IDX] = sort( Q, 'descend' );
words(tmp2_IDX(1:5))