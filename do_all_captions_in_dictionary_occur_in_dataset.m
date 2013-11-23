tmp4 = documentwords(:);
min_occur_of_word_in_data_set = 1000;

index = 1;
for i  = 1 : number_of_words

    if (length(tmp4(tmp4 == i)) == 0)
        list_of_non_occuring_words(index) = i;
        index = index + 1;
    end
    
end
    