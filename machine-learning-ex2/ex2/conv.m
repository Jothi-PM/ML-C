k1 = [1 2 1];
k2 = [1; 2; 1;];
A = [1 2 3; 4 5 6; 7 8 9;];

k = [1 2 1; 2 4 2; 1 2 1;];
C = conv2(A, k, "same"); % typical convolution
disp("\nTypical convolution");
disp(C);

output1 = conv2(A, k1, "same");
output2 = conv2(output1, k2, "same");

disp("\nconvolution with row vector");
disp(output1);
disp("\nFinal convolution with column vector");
disp(output2);


