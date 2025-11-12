clear, close all; clc;
% for loop to repeat the first test 3 times
for k = 1:3
    % 5x5 matrix with random entries
    A = rand(5) % ADD YOUR CODE HERE

    % check if (A + I_5)*(A - I_5) - (A^2 - I_5)
    % gives the zero matrix
    (A + eye(5))*(A - eye(5)) - (A^2 - eye(5)) % ADD YOUR CODE HERE
end

% The result is always the zero matrix (or very close, like 1.0e-15, due to floating-point rounding).
% This shows that (A+I)(A-I) = A^2 - I holds true because A and I commute (AI = IA).


% for loop to repeat the second test 3 times
for k = 1:3
    % 5x5 matrices with random entries
    A = rand(5) % ADD YOUR CODE HERE
    B = rand(5) % ADD YOUR CODE HERE

    % check if (A+B)*(A-B) - (A^2-B^2) gives zero matrix
    (A + B)*(A - B) - (A^2 - B^2) % ADD YOUR CODE HERE
end

% The result is NOT the zero matrix.
% This is because (A+B)(A-B) = A^2 - AB + BA - B^2.
% This only equals A^2 - B^2 if -AB + BA = 0, which means AB = BA.
% Since A and B are random matrices, they generally do not commute, so AB != BA.
