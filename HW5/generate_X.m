function [sample] = generate_X(n, X_input)
X = X_input;
f_x = [0.04,0.06,0.07,0.08,0.08,0.11,0.07,0.06,0.05,0.03,0.06,0.12,0.10,0.07];
f_x_presum = zeros(length(f_x));
% Caluculate presum version of f_x
for i = 1:length(f_x)
    if(i==1)
        f_x_presum(i) = f_x(i);
    else
        f_x_presum(i) = f_x(i) + f_x_presum(i-1);
    end
end

sample = rand(1,n); % generate n times 0~1
% Replace the value in "sample" into X
for i = 1:n
    if(sample(i) <= f_x_presum(1)) % X = 1
        sample(i) = X(1);
    elseif(sample(i) <= f_x_presum(2)) % X = 2
        sample(i) = X(2);
    elseif(sample(i) <= f_x_presum(3)) % X = 3
        sample(i) = X(3);
    elseif(sample(i) <= f_x_presum(4)) % X = 4
        sample(i) = X(4);
    elseif(sample(i) <= f_x_presum(5)) % X = 5
        sample(i) = X(5);
    elseif(sample(i) <= f_x_presum(6)) % X = 6
        sample(i) = X(6);
    elseif(sample(i) <= f_x_presum(7)) % X = 7
        sample(i) = X(7);
    elseif(sample(i) <= f_x_presum(8)) % X = 8
        sample(i) = X(8);
    elseif(sample(i) <= f_x_presum(9)) % X = 9
        sample(i) = X(9);
    elseif(sample(i) <= f_x_presum(10)) % X = 10
        sample(i) = X(10);
    elseif(sample(i) <= f_x_presum(11)) % X = 11
        sample(i) = X(11);
    elseif(sample(i) <= f_x_presum(12)) % X = 12
        sample(i) = X(12);
    elseif(sample(i) <= f_x_presum(13)) % X = 13
        sample(i) = X(13);
    else % X = 14
        sample(i) = X(14);
    end
end
