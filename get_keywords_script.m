I4 = imread('../testing/231052.jpg');
Q = grid_generate_keywords(I4, fCenter,fPwJ_MLE,fPwJ_GRE  ,  fPbJ_MLE,fPbJ_GRE ,0.1, 0.7, 15, number_of_words);
[tmp2, tmp2_IDX] = sort(Q,'descend');
words(tmp2_IDX(1:5))