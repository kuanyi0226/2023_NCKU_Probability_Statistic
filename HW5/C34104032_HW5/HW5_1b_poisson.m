function [probability] = HW5_1b_poisson(x,lambda_t)
% x: # of events
% lambda: average # of outcomes per unit
% t: interval
%lambda_t: lambda * t

% Calculate factorial
x_factorial = 1;
if (x==0)
    x_factorial = 1;
elseif (x==1)
    x_factorial = 1;
else
    for n = 1:x
        x_factorial = x_factorial * n;
    end
end
% Calculate p(x;lambda*t)
probability = ((exp(1)^((-1)*lambda_t) * (lambda_t)^x)) / x_factorial;