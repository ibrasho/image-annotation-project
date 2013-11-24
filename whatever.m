I4 = imread('../testing/108019.jpg');
Q = grid_generate_keywords(I4, grid_kmeans_C,gPwJ_MLE,gPwJ_GRE  ,  gPbJ_MLE,gPbJ_GRE ,0.1, 0.7, 15, number_of_words);
[tmp2 tmp2_IDX] = sort(Q,'descend');
words(tmp2_IDX(1:5))