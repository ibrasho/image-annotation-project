[file_name, file_path] = uigetfile( '*.jpg', 'Select the image', '../testing' );
I = imread( fullfile( file_path, file_name ) );

Q_CFCMRM = getKeywords( I, fCenter, cfPwJ_MLE, cfPwJ_GRE, cfPbJ_MLE, cfPbJ_GRE, 0.1, 0.7, 15, number_of_words );
Q_FCMRM = getKeywords(  I, fCenter,  fPwJ_MLE,  fPwJ_GRE,  fPbJ_MLE,  fPbJ_GRE, 0.1, 0.7, 15, number_of_words );

fprintf('CFCMRM:');
[ ~, annotations ] = sort( Q_CFCMRM, 'descend' );
words( annotations(1:5) )

fprintf('FCMRM:')
[ ~, annotations ] = sort( Q_FCMRM, 'descend' );
words( annotations(1:5) )
