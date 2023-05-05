% HW5 1.(c) Generate the binomial Prob. Sum in p.746
clc

prob = [0.10; 0.20; 0.25; 0.30; 0.40; 0.50; ...
     0.60; 0.70; 0.80; 0.90];

% Calculate # of rows and columns of the table
% row = 35
row = 0;
for n = 1:7
    for r = 0:n
        row = row +1;
    end
end 
% column = 10
column = length(prob);

% Calculate the binomial prob. sum table
binomial_sum_table = zeros(row, column);
row_counter = 1;
for n = 1:7
    for r = 0:n
        for p = 1:column
            if(r == 0)
                binomial_sum_table(row_counter,p) = HW5_1a_binomial(0,n,prob(p));
            elseif(r == n)
                binomial_sum_table(row_counter,p) = 1.0000;
            else
                current_prob = HW5_1a_binomial(r,n,prob(p));
                binomial_sum_table(row_counter,p) = current_prob + binomial_sum_table(row_counter-1,p);
            end 
        end
        row_counter = row_counter +1;
    end
end

% round the binomial_sum_table to 4 decimal places(like the table shown in p.746)
for i = 1:row
    for j = 1:column
        binomial_sum_table(i,j) = round(binomial_sum_table(i,j), 4); %cumulate
    end
end

% Create a table

n_table = zeros(row,1); % for table decoration
row_counter = 1;
for n = 1:7
    for r = 0:n
        n_table(row_counter) = n;
        row_counter = row_counter +1;
    end
end

r_table = zeros(row,1); % for table decoration
row_counter = 1;
for n = 1:7
    for r = 0:n
        r_table(row_counter) = r;
        row_counter = row_counter +1;
    end
end

table_printed = [n_table, r_table, binomial_sum_table];

T = array2table(table_printed, ...
    'VariableNames', {'n';'r';'p = 0.10'; '0.20'; '0.25'; '0.30'; '0.40'; '0.50'; ...
     '0.60'; '0.70'; '0.80'; '0.90'});
disp('Binomial Probability Sums(b(x;n,p), from x = 0 to r)')
disp(T);

