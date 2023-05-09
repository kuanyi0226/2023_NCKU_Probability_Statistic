% HW5 1.(e)
clc

n = 10000;
p = [0.01, 0.1, 0.2, 0.5];

% Binomial and Poisson 1
figure('Name','HW5 1.(e)');
subplot(2,4,1); % 8 plots in one figure
x = 0:n;
y1_b = binopdf(x, n, p(1));
plot(x, y1_b);
hold on;
mu1 = n*p(1); % Calculate µ
y1_p = poisspdf(x, mu1);
plot(x, y1_p);
hold off;
title('n = 10^4 p = 0.01');
legend('binomial distribution', 'poisson distribution');
xlabel('Observation');
ylabel('Probability');
axis([0 200 0 0.05]);

% Binomial and Poisson 2
subplot(2,4,2);
y2_b = binopdf(x, n, p(2));
plot(x, y2_b);
hold on;
mu2 = n*p(2); % Calculate µ
y2_p = poisspdf(x, mu2);
plot(x, y2_p);
hold off;
title('n = 10^4 p = 0.1');
legend('binomial distribution', 'poisson distribution');
xlabel('Observation');
ylabel('Probability');
axis([500 1500 0 0.016]);

% Binomial and Poisson 3
subplot(2,4,3);
y3_b = binopdf(x, n, p(3));
plot(x, y3_b);
hold on;
mu3 = n*p(3); % Calculate µ
y3_p = poisspdf(x, mu3);
plot(x, y3_p);
hold off;
title('n = 10^4 p = 0.2');
legend('binomial distribution', 'poisson distribution');
xlabel('Observation');
ylabel('Probability');
axis([1000 3000 0 0.012]);

% Binomial and Poisson 4
subplot(2,4,4);
y4_b = binopdf(x, n, p(4));
plot(x, y4_b);
hold on;
mu4 = n*p(4); % Calculate µ
y4_p = poisspdf(x, mu4);
plot(x, y4_p);
hold off;
title('n = 10^4 p = 0.5');
legend('binomial distribution', 'poisson distribution');
xlabel('Observation');
ylabel('Probability');
axis([4300 5700 0 0.0095]);

% Error 1
errors = zeros(1,10001); % x: 0~10000
for i = 1:10000
    errors(i) = y1_b(i) - y1_p(i); 
end
subplot(2,4,5);
plot(x, errors);
title('Errors 1');
xlabel('Observation');
ylabel('Errors');
axis([0 200 -0.0001  0.00024]);

% Error 2
errors = zeros(1,10001); % x: 0~10000
for i = 1:10000
    errors(i) = y2_b(i) - y2_p(i); 
end
subplot(2,4,6);
plot(x, errors);
title('Errors 2');
xlabel('Observation');
ylabel('Errors');
axis([500 1500 -0.00042 0.0009]);

% Error 3
errors = zeros(1,10001); % x: 0~10000
for i = 1:10000
    errors(i) = y3_b(i) - y3_p(i); 
end
subplot(2,4,7);
plot(x, errors);
title('Errors 3');
xlabel('Observation');
ylabel('Errors');
axis([1000 3000 -0.0005 0.0012]);

% Error 4
errors = zeros(1,10001); % x: 0~10000
for i = 1:10000
    errors(i) = y4_b(i) - y4_p(i); 
end
subplot(2,4,8);
plot(x, errors);
title('Errors 4');
xlabel('Observation');
ylabel('Errors');
axis([4300 5700 -0.0012 0.003]);

% 在n固定為10000的情況下，p的值越大，
% the errors from approximating Binomial dist. with Poisson dist.(誤差)會越大。
% 這是因為，當Binomial Dist. 的n趨近無限大、p趨近於0時，
% 較能符合Poisson Process，
% 使得Binomial Dist. 會趨近於 Poisson Dist.
% (在此條件下，n*p當作 Poisson Dist.的參數µ傳入， ...
% 較接近實際上的Binomial Dist.)。