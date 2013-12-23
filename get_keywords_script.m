[file_name, file_path] = uigetfile( '*.jpg', 'Select the image', '../testing' );
I = imread( fullfile( file_path, file_name ) );

keywords = getKeywords(  I, centroids, PwJ_MLE, PwJ_GRE, PbJ_MLE, PbJ_GRE, 0.1, 0.7, 15, number_of_words );

[ ~, annotations ] = sort( keywords, 'descend' );
words( annotations(1:5) )