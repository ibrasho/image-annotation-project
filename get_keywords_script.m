[file_name, file_path] = uigetfile( '*.jpg', 'Select the image', '../testing' );
I = imread( fullfile( file_path, file_name ) );


%Q_CMRM = getKeywords( I, grid_kmeans_C, grid_PwJ_MLE, grid_PwJ_GRE, grid_PbJ_MLE, grid_PbJ_GRE, 0.1, 0.7, 15, number_of_words );
Q_CFCMRM = getKeywords( I, fcenter,       cfPwJ_MLE,    cfPwJ_GRE,    cfPbJ_MLE,    cfPbJ_GRE,    0.1, 0.7, 15, number_of_words );
Q_FCMRM = getKeywords( I, fcenter,       fPwJ_MLE,    fPwJ_GRE,   fPbJ_MLE,    fPbJ_GRE,    0.1, 0.7, 15, number_of_words );

fprintf('CFCMRM:');
[~, tmp2_IDX] = sort( Q_CFCMRM, 'descend' );
words(tmp2_IDX(1:5))

fprintf('FCMRM:')
[~, tmp2_IDX] = sort( Q_FCMRM, 'descend' );
words(tmp2_IDX(1:5))