[file_name, file_path] = uigetfile( '*.jpg', 'Select the image', '../testing' );
I = imread( fullfile( file_path, file_name ) );

%<<<<<<< HEAD
%Q1 = generateKeywordsGrid( I, fcenter,       cfPwJ_MLE,    cfPwJ_GRE,    cfPbJ_MLE,    cfPbJ_GRE,    0.1, 0.7, 15, number_of_words );
%Q2 = generateKeywordsGrid( I, grid_kmeans_C, grid_PwJ_MLE, grid_PwJ_GRE, grid_PbJ_MLE, grid_PbJ_GRE, 0.1, 0.7, 15, number_of_words );
%Q2 = generateKeywordsGrid( I, fcenter,       fPwJ_MLE,    fPwJ_GRE,    fPbJ_MLE,    fPbJ_GRE,    0.1, 0.7, 15, number_of_words );

%Q_CFCMRM = getKeywords( I, fCenter12, cfPwJ_MLE12, cfPwJ_GRE12, cfPbJ_MLE12, cfPbJ_GRE12, 0.1, 0.7, 15, number_of_words );
%Q_FCMRM = getKeywords(  I, fCenter12,  fPwJ_MLE12,  fPwJ_GRE12,  fPbJ_MLE12,  fPbJ_GRE12, 0.1, 0.7, 15, number_of_words );
%=======


Q_CFCMRM = getKeywords( I, fCenter12300, cfPwJ_MLE12300, cfPwJ_GRE12300, cfPbJ_MLE12300, cfPbJ_GRE12300, 0.1, 0.7, 15, number_of_words );
Q_FCMRM = getKeywords(  I, fCenter12300,  fPwJ_MLE12300,  fPwJ_GRE12300,  fPbJ_MLE12300,  fPbJ_GRE12300, 0.1, 0.7, 15, number_of_words );

Q_TFCMRM = getKeywords(  I, fCenter12300,  tfPwJ_MLE12300,  tfPwJ_GRE12300,  tfPbJ_MLE12300,  tfPbJ_GRE12300, 0.1, 0.7, 15, number_of_words );

%Q_CFCMRM = getKeywords( I, fCenter12, cfPwJ_MLE, cfPwJ_GRE, cfPbJ_MLE, cfPbJ_GRE, 0.1, 0.7, 15, number_of_words );
%Q_FCMRM = getKeywords(  I, fCenter12,  fPwJ_MLE,  fPwJ_GRE,  fPbJ_MLE,  fPbJ_GRE, 0.1, 0.7, 15, number_of_words );
%>>>>>>> e473f11f029858780031588a913c987d061661e6

fprintf('C-FCMRM:');
[~, tmp2_IDX] = sort( Q_CFCMRM, 'descend' );
words(tmp2_IDX(1:5))

fprintf('FCMRM:')
[~, tmp2_IDX] = sort( Q_FCMRM, 'descend' );
words(tmp2_IDX(1:5))

fprintf('T-FCMRM:')
[~, tmp2_IDX] = sort( Q_TFCMRM, 'descend' );
words(tmp2_IDX(1:5))