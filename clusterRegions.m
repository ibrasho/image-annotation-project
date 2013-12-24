function [ memberships, centroids ] = clusterRegions( features_vector, cluster_count, m )
    [ centroids, memberships, ~ ] = fcm( features_vector, cluster_count, [ m, 50 ] );
end
