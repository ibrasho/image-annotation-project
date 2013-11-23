function [ Histogram ] = CSD_gray( InputImage, Mask )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

gray_image = rgb2gray(InputImage);
[row, col] = size(gray_image);
masked_gray_image = zeros(row, col);
 %Mask = Mask & Mask; %converts all nonzero values to one

for a=1:row
    for b=1:col
        if Mask(a,b)==0
            masked_gray_image(a,b) = -1;
        else
            masked_gray_image(a,b) = gray_image(a,b);
        end
    end
end

Histogram = zeros(1,256);


for i=1:(row-7)
    for j=1:8:(col-7)
        %if sum(gray_image(i:i+7,j:j+7))==0
        %    continue
        %end
        temp = unique(gray_image(i:i+7,j:j+7));   
        temp = temp(temp ~= -1);
        temp=temp+1;  
        Histogram(temp) = Histogram(temp)+1;
    end
        
end

%new addition to make number of bins equal to 32
Histogram = sum(reshape(Histogram, [], 32));

end