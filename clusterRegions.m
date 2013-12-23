function [ memberships, centroids ] = clusterRegions( features_vector )
    [ centroids, memberships, ~ ] = fcm( features_vector, 300, [ 1.2, 50 ] );
end
