% m_250_results_prec = cell(1,4);
% m_250_results_recall = cell(1,4);
% 
% for i = 1:4
%     centroids = centroids_clusters_250_m{i};
%     PwJ_GRE = PwJ_GRE_clusters_250_m{i};
%     PwJ_MLE = PwJ_MLE_clusters_250_m{i};
%     PbJ_GRE = PbJ_GRE_clusters_250_m{i};
%     PbJ_MLE = PbJ_MLE_clusters_250_m{i};
%     
%     [ m_250_results_recall{i}, m_250_results_prec{i}, ~ ] = calculatePerformanceMeasuresForParameters( 0.1, 0.7, 5, centroids, PwJ_MLE, PwJ_GRE, PbJ_MLE, PbJ_GRE, testing_image_names, testing_image_annotations );
% end

a_b_recall = cell(1,25);
a_b_prec = cell(1,25);

centroids = centroids_clusters_250_m{1};
PwJ_GRE = PwJ_GRE_clusters_250_m{1};
PwJ_MLE = PwJ_MLE_clusters_250_m{1};
PbJ_GRE = PbJ_GRE_clusters_250_m{1};
PbJ_MLE = PbJ_MLE_clusters_250_m{1};
for i = 0:4
    for j = 0:4
        a = 0.1 + 0.2 * i
        b = 0.1 + 0.2 * j
        [ a_b_recall{1+i+j*5}, a_b_prec{1+i+j*5}, ~ ] = calculatePerformanceMeasuresForParameters( a, b, 5, centroids, PwJ_MLE, PwJ_GRE, PbJ_MLE, PbJ_GRE, testing_image_names, testing_image_annotations );
    end
end
a_b_results = [ cell2mat( a_b_recall );  cell2mat( a_b_prec ) ];

% m_results_prec = cell(1,4);
% m_results_recall = cell(1,4);
% 
% for i = 1:4
%     centroids = centroids_clusters_300_m{i};
%     PwJ_GRE = PwJ_GRE_clusters_300_m{i};
%     PwJ_MLE = PwJ_MLE_clusters_300_m{i};
%     PbJ_GRE = PbJ_GRE_clusters_300_m{i};
%     PbJ_MLE = PbJ_MLE_clusters_300_m{i};
%     
%     [ m_results_recall{i}, m_results_prec{i}, ~ ] = calculatePerformanceMeasuresForParameters( 0.1, 0.7, 5, centroids, PwJ_MLE, PwJ_GRE, PbJ_MLE, PbJ_GRE, testing_image_names, testing_image_annotations );
% end
% 
% clusters_results_recall = cell(1,9);
% clusters_results_prec = cell(1,9);
% for i = 1:9
%     centroids = centroids_m_12_clusters{i};
%     PwJ_GRE = PwJ_GRE_m_12_clusters{i};
%     PwJ_MLE = PwJ_MLE_m_12_clusters{i};
%     PbJ_GRE = PbJ_GRE_m_12_clusters{i};
%     PbJ_MLE = PbJ_MLE_m_12_clusters{i};
%     
%     [ clusters_results_recall{i}, clusters_results_prec{i}, ~ ] = calculatePerformanceMeasuresForParameters( 0.1, 0.7, 5, centroids, PwJ_MLE, PwJ_GRE, PbJ_MLE, PbJ_GRE, testing_image_names, testing_image_annotations );
% end
% 
% 
