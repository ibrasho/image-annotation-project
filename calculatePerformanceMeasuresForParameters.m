function [ recall, precision, fscore ] = calculatePerformanceMeasuresForParameters( alpha, beta, number_of_annotations, centroids, PwJ_MLE, PwJ_GRE, PbJ_MLE, PbJ_GRE, testing_image_names, testing_image_annotations )

word_count = 374;
test_image_count = 409;

test_annotations = zeros( word_count, 10 );

for i = 1:test_image_count
    testing_image_name = strcat( '../testing/', num2str( testing_image_names(i) ), '.jpg' );
    testing_image = imread(testing_image_name);
    
    annotations = getAnnotations( testing_image, centroids, PwJ_MLE, PwJ_GRE, PbJ_MLE, PbJ_GRE, alpha, beta, 15, word_count);
    
    [~, annotations] = sort( annotations, 'descend' );
    test_annotations(i,:) = annotations(1:10);

    fprintf('Finished image %d / 409\n', i);
end

test_annotations = test_annotations(:,1:number_of_annotations);

recall = zeros( 1, test_image_count );
precision = zeros( 1, test_image_count );

for i = 1:test_image_count
    relevant_count = length( find( testing_image_annotations(i,:) > 0 ) );
    relevant = testing_image_annotations( i, 1:relevant_count );
    
    retrieved = test_annotations(i,:);
    retrieved_count = length( retrieved );
    
    retrieved_intersect_relevant = intersect( retrieved, relevant );
    retrieved_intersect_relevant_count = length( retrieved_intersect_relevant );

    recall(i) = retrieved_intersect_relevant_count / relevant_count;
    precision(i) = retrieved_intersect_relevant_count / retrieved_count;
end

recall = sum( recall ) / length( recall );
precision = sum( precision ) / length( precision );
fscore = 2 * (precision * recall) / (recall + precision);