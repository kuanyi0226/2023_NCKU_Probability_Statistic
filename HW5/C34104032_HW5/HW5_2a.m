% HW_5 2.(a)

% f(x) versus X(dicrete)
X = 1:14;
f_x = [0.04, 0.06, 0.07, 0.08, 0.08, 0.11, 0.07, 0.06, 0.05, 0.03, 0.06, 0.12, 0.10, 0.07];
figure('name','2.(a) f(x) versus X','NumberTitle','off'); 
bar(X, f_x, 'BarWidth',1);

%decoration
title('HW5 2.(a) Probability Distribution'); 
xlabel('X');  
ylabel('f(x)');


