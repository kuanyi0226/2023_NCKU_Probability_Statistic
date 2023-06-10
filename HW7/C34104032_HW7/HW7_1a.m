%HW7 1.(a)

function[sample] = HW7_1a(n)
sample = zeros(1,1000000); %init the output

for i = 1:n
    uniform = rand(1,1000000); %generate uniform distribution
    sample = sample + uniform; %Xn = U1 + U2 + ... + Un
end
