%HW7 1.(b)

%X_1
n = 1;
sample_of_x1 = HW7_1a(n);
figure('Name','HW7_1b n = 1');
histogram(sample_of_x1,100,'Normalization','pdf');

%normal
title('HW7 1.(b) n = 1');
xlabel('X_1')
ylabel('Probability Distribution')
mean = n/2;
standard_dev = (n/12)^(0.5);
hold on;
x = 0:.001:1;
y = normpdf(x,mean,standard_dev);
plot(x,y);
hold off;
legend('Irwin-Hall Distribution', 'Normal Distribution');


%X_2 (Similar as above)
n = 2;
sample_of_x2 = HW7_1a(n);
figure('Name','HW7_1b n = 2');
histogram(sample_of_x2,100,'Normalization','pdf');

%normal
title('HW7 1.(b) n = 2');
xlabel('X_2')
ylabel('Probability Distribution')
mean = n/2;
standard_dev = (n/12)^(0.5);
hold on;
x = 0:.001:2;
y = normpdf(x,mean,standard_dev);
plot(x,y);
hold off;
legend('Irwin-Hall Distribution', 'Normal Distribution');


%X_20 (Similar as above)
n = 20;
sample_of_x20 = HW7_1a(n);
figure('Name','HW7_1b n = 20');
histogram(sample_of_x20,100,'Normalization','pdf');

%normal
title('HW7 1.(b) n = 20');
xlabel('X20')
ylabel('Probability Distribution')
mean = n/2;
standard_dev = (n/12)^(0.5);
hold on;
x = 0:.001:20;
y = normpdf(x,mean,standard_dev);
plot(x,y);
hold off;
legend('Irwin-Hall Distribution', 'Normal Distribution');

% When n is too small, the errors of using a Irwin-Hall distribution 
% to approximate a normal distribution will be very large. That is, the 
% approximation is bad when n is small.(When n = 1, two distributions are 
% completely different; when n = 2, the approximation is slightly better,
% but still do not look like normal distribution.).
%
% However, when n is huge enough(like the case n = 20 above), 
% the approximation will be great, the errors are small.
% Also, this is a good example to demonstrate the central limit theorem.
% when n is huge enough, Irwin-Hall Dist.(Originally not normal dist.)
% will be like Normal Dist.
