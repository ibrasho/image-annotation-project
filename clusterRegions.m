function [ cluster_membership, centroids ] = clusterRegions( feature_vectors )

    % opts = statset( 'Display', 'iter', 'MaxIter', max_iterations);
    % [ cluster_membership, centroids ] = kmeans( feature_vectors, number_of_clusters, 'Options', opts );
    [ centroids, cluster_membership, ~ ] = fcm( feature_vectors, 300, [ 2.0, 10 ] );

end

