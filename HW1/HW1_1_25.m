% HW1 1.25
clc
% establish the data set from question 1.25
dataSet = [72.2; 31.9; 26.5; 29.1; 27.3; 8.6; 22.3; 26.5; ...
           20.4; 12.8; 25.1; 19.2; 24.1; 58.2; 68.1; 89.2; ...
           55.1; 9.4; 14.5; 13.9; 20.7; 17.9; 8.5; 55.4; ...
           38.1; 54.2; 21.5; 26.2; 59.1; 43.3];
dataSet_length = length(dataSet); % length of this dataset = 30


% question (a): sample mean
sum = 0;
for i = 1:dataSet_length %find the sum of 30 datas in the data set
    sum = sum + dataSet(i);
end
sample_mean = sum/dataSet_length; %find the mean by (sum / amount of datas)

str_a = ['(a) sample mean = ', num2str(sample_mean)]; %prepare the output text
disp(str_a); % ans = 33.31



% question (b):sample median
dataSet_sorted = sort(dataSet); % sort the original dataSet in ascending order

if mod(dataSet_length, 2) == 0 %n: even, median = (X(n/2)+X(n/2 +1))/2
    sample_median = (dataSet_sorted(dataSet_length/2) + ...
                     dataSet_sorted((dataSet_length/2) +1)) /2;
else %n: odd, median = (X(n+1 /2))
    sample_median = dataSet_sorted((dataSet_length+1)/2);
end

str_b = ['(b) sample median = ', num2str(sample_median)]; %prepare the output text
disp(str_b); % ans = 26.35



%question (c): relative frequency histogram of the data
histogram(dataSet,5:10:95); %using the dataset to construct relative frequency histogram which starts from 5 to 95 with "bar width 10"
xlabel('Families being in the upper income level(%)');  
ylabel('Relative Frequency')  
title('Relative Frequency Histogram of the data');  



%question (d): 
dataSet_trim10 = dataSet_sorted; % copy the sorted dataset to another array
trim10 = length(dataSet) * 0.1 ; %the amount of data we're going to trim from both the begining & end of the sorted data set

for i = 1: trim10 %run 3 times
    dataSet_trim10(1) = []; %trim the 1st element for 3 times
    dataSet_trim10(length(dataSet_trim10)) = []; %trim the last element for three times
end
trimmed_mean = mean(dataSet_trim10); %calculate the trimmed mean
str_d = ['(d) trimmed mean = ', num2str(trimmed_mean)]; %prepare the output text
disp(str_d); % ans = 30.9708

% 比起原始的平均值，刪掉一些outliers後，10% trimmed mean 更靠近中位數(往(c)圖表的左側偏移)。
% 這是因為原始數據的Data Distribution是呈現
% Right-Skewed的，即資料較集中在(c)圖表中左側的位置。

