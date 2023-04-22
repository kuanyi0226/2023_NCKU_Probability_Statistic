%HW2 1.(c)

% Initialize variables
P_B3_A = zeros(1,10); % P(B3|A) which is the answer we wanted

totalProduct = 100000;
B1_num = totalProduct * 0.3; % # of products produced by B1
B2_num = totalProduct * 0.45; % # of products produced by B2
B3_num = totalProduct * 0.25; % # of products produced by B3
defects_num = zeros(1, 3); % store the defective num of B1, B2, B3 each turn to calculate A
A = zeros(1,10); % store the total defects_num(B1's + B2's + B3's)  

% Repeat the trials for 10 times
for i = 1:10
    % Produce products by B1, B2, B3
    B1 = HW2_1a_function(0.02, B1_num); 
    B2 = HW2_1a_function(0.03, B2_num);
    B3 = HW2_1a_function(0.02, B3_num);
    % Calculate num of defectives of B1, B2, B3
    defects_num = zeros(1,3); %reset
    for j = 1:B1_num %B1
        if(B1(1,j) == 1)
            defects_num(1,1) = defects_num(1,1) +1;
        end
    end
    for j = 1:B2_num %B2
        if(B2(1,j) == 1)
            defects_num(1,2) = defects_num(1,2) +1;
        end
    end
    for j = 1:B3_num %B3
        if(B3(1,j) == 1)
            defects_num(1,3) = defects_num(1,3) +1;
        end
    end
    % Calculate total defectives among 100000 products
    A(1,i) = defects_num(1,1) + defects_num(1,2) + defects_num(1,3);

    % Calculate P(B3|A)
    P_B3_A(1,i) = defects_num(1,3) / A(1,i);

end

%  Compare to theoretical value of P(B3|A) on text book = 10/49
P_B3_A_average = mean(P_B3_A); % calculate the mean value of 10 times
disp(P_B3_A_average);

% The theoretical value is around 0.2041
% And the moment I run the this program, P_B3_A_average = 0.2042(may change every time)
% => very close to the theoretical value, thus this simulation program is reliable.

% Save 10 numbers(P(B3|A)) as a .m file
save('HW2_1c_10num.mat','P_B3_A');



