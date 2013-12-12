function [ cluster_membership, centroids ] = clusterRegions( feature_vectors )
    [ centroids, cluster_membership, ~ ] = fcm( feature_vectors, 300, [ 1.2, 10 ] );
end
