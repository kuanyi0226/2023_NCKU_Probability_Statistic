function [products] = HW2_1a_function(defectiveRate, productNum) %ouput: 1*productNum row vector // input: defective rate & total number of products
products = rand(1,productNum); %randomly produce a 1*productNum row vector with value = 0~1

%replace the value in "products" into 1(defective) or 0(non-defective)
for i = 1 : productNum
    if(products(1,i) <= defectiveRate) %value <= decfective rate: set value to 1(defective)
        products(1,i) = 1;
    else %value > defective rate: set value to 0
        products(1,i) = 0;
    end
end
