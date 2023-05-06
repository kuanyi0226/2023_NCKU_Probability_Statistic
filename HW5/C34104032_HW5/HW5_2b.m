% HW5 2.(b)
clc

n = 10000;
X = [1,2,3,4,5,6,7,8,9,10,11,12,13,14];
sample = generate_X(n, X); % call the function "generate_X" to generate sample

% calculate the relative frequency
freq = zeros(1,14);
for i = 1:n
    freq(sample(i)) = freq(sample(i)) +1;
end

for i = 1:14
    freq(i) = freq(i) / 10000.0;
end

% plot
figure('name','Histogram(Generate in Random)','NumberTitle','off'); 
bar(X, freq,1);

% decoration
title('HW5 2.(b) Relative Frequency Plot of the samples'); 
xlabel('X');  
ylabel('Relative Frequency');