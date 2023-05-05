% HW5 1.(d) Generate the Poisson Prob. Sum in p.753
clc

% mu = lambda * t
mu = [5.5; 6.0; 6.5; 7.0; 7.5; 8.0; ...
     8.5; 9.0; 9.5];

% Calculate # of rows and columns of the table
% row = 25
row = 25;
% column = 9
column = length(mu);

% Calculate the Poisson prob. sum table
poisson_sum_table = zeros(row, column);

for r = 0:(row-1)
    for u = 1:column
        if(r == 0)
            poisson_sum_table(1,u) = HW5_1b_poisson(0, mu(u));
        else
            current_prob = HW5_1b_poisson(r, mu(u));
            poisson_sum_table(r+1,u) = poisson_sum_table(r,u) + current_prob; %cumulate
        end
    end
end

% round the poisson_sum_table to 4 decimal places(like the table shown in p.753)
for i = 1:row
    for j = 1:column
        poisson_sum_table(i,j) = round(poisson_sum_table(i,j), 4);
    end
end

% Create a table

r_table = zeros(row,1); % for table decoration
for r = 0:(row-1)
    r_table(r+1) = r;
end

table_printed = [r_table, poisson_sum_table];

T = array2table(table_printed, ...
    'VariableNames', {'r';'µ = 5.5'; '6.0'; '6.5'; '7.0'; '7.5'; '8.0'; ...
     '8.5'; '9.0'; '9.5'});
disp('Poisson Probability Sums(p(x;µ), from x = 0 to r)')
disp(T);