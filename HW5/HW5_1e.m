% HW5 1.(e)
clc

figure('name','p = 0.01','NumberTitle','off'); 
x = 0:10000;
y = binopdf(x, 10.^4, 0.01);
plot(x, y);
hold on;
y_1 = poisspdf(x, 100);
plot(x, y_1);
hold off;
legend('binomial distribution', 'poisson distribution');

figure('name','p = 0.1','NumberTitle','off'); 
x1 = 0:10000;
y1 = binopdf(x1, 10.^4, 0.1);
plot(x1, y1);
hold on;
y1_1 = poisspdf(x1, 1000);
plot(x1, y1_1);
hold off;
legend('binomial distribution', 'poisson distribution');

figure('name','p = 0.2','NumberTitle','off'); 
x2 = 0:10000;
y2 = binopdf(x2, 10.^4, 0.2);
plot(x2, y2);
hold on;
y2_1 = poisspdf(x2, 2000);
plot(x2, y2_1);
hold off;
legend('binomial distribution', 'poisson distribution');

figure('name','p = 0.5','NumberTitle','off'); 
x3 = 0:10000;
y3 = binopdf(x3, 10.^4, 0.5);
plot(x3, y3);
hold on;
y3_1 = poisspdf(x3, 5000);
plot(x3, y3_1);
hold off;
legend('binomial distribution', 'poisson distribution');

figure('name','error','NumberTitle','off');
error = zeros(1, 10001);
for i = 1:10001
   error(i) = abs(y_1(i) - y(i)); 
end
plot(x, error);
hold on;
error1 = zeros(1, 10001);
for i = 1:10001
   error1(i) = abs(y1_1(i) - y1(i)); 
end
plot(x1, error1);
error2 = zeros(1, 10001);
for i = 1:10001
   error2(i) = abs(y2_1(i) - y2(i)); 
end
plot(x2, error2);
error3 = zeros(1, 10001);
for i = 1:10001
   error3(i) = abs(y3_1(i) - y3(i)); 
end
plot(x3, error3);
hold off;
legend('p = 0.01', 'p = 0.1', 'p = 0.2', 'p = 0.5');
title('Absolute Error');