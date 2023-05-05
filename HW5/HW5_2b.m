% HW5 2.(b)
X = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14];
sample = [1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 12, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 13, 13, 13, 13, 13, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14];
result = zeros(1, 10000);
random_f_x = zeros(1, 14);
for i = 1:10000
    result(1, i) = sample(1, randi(100));
    if(result(1, i) == 1)
        random_f_x(1, 1) = random_f_x(1, 1) + 1;
    end
    if(result(1, i) == 2)
        random_f_x(1, 2) = random_f_x(1, 2) + 1;
    end
    if(result(1, i) == 3)
        random_f_x(1, 3) = random_f_x(1, 3) + 1;
    end
    if(result(1, i) == 4)
        random_f_x(1, 4) = random_f_x(1, 4) + 1;
    end
    if(result(1, i) == 5)
        random_f_x(1, 5) = random_f_x(1, 5) + 1;
    end
    if(result(1, i) == 6)
        random_f_x(1, 6) = random_f_x(1, 6) + 1;
    end
    if(result(1, i) == 7)
        random_f_x(1, 7) = random_f_x(1, 7) + 1;
    end
    if(result(1, i) == 8)
        random_f_x(1, 8) = random_f_x(1, 8) + 1;
    end
    if(result(1, i) == 9)
        random_f_x(1, 9) = random_f_x(1, 9) + 1;
    end
    if(result(1, i) == 10)
        random_f_x(1, 10) = random_f_x(1, 10) + 1;
    end
    if(result(1, i) == 11)
        random_f_x(1, 11) = random_f_x(1, 11) + 1;
    end
    if(result(1, i) == 12)
        random_f_x(1, 12) = random_f_x(1, 12) + 1;
    end
    if(result(1, i) == 13)
        random_f_x(1, 13) = random_f_x(1, 13) + 1;
    end
    if(result(1, i) == 14)
        random_f_x(1, 14) = random_f_x(1, 14) + 1;
    end
end
for i = 1:14
    random_f_x(1, i) = random_f_x(1, i) / 10000;
end
figure('name','Histogram(Generate in Random)','NumberTitle','off'); 
bar(X, random_f_x);
