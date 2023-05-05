function [probability] = HW5_1a_binomial(x,n,p)
% x: # of success
% n: # of trials
% p: success prob.
probability = nchoosek(n,x) * (p)^x * (1-p)^(n-x);