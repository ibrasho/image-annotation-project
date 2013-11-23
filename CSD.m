function [ Histogram ] = CSD( InputImage, Mask )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

[row, col, channel] = size(InputImage);


Red_Histogram = zeros(1,256);
Green_Histogram = zeros(1,256);
Blue_Histogram = zeros(1,256);

%Mask = Mask & Mask; %converts all nonzero values to one

for i=1:(row-7)
    for j=1:(col-7)
        temp1 = unique(InputImage(i:i+7,j:j+7,1));
        temp2 = unique(InputImage(i:i+7,j:j+7,2));
        temp3 = unique(InputImage(i:i+7,j:j+7,3));
        
        temp1=temp1+1;
        temp2=temp2+1;
        temp3=temp3+1;
        
        Red_Histogram(temp1) = Red_Histogram(temp1)+1;
        Green_Histogram(temp2) = Green_Histogram(temp2)+1;
        Blue_Histogram(temp3) = Blue_Histogram(temp3)+1;
    end
        
end


Histogram = [Red_Histogram;Green_Histogram;Blue_Histogram ];

end

