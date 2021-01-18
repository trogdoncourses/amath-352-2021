clear all; close all;
%% Using Matlab's LU functionality
n = 5;
A = randi(3,5) - 1;
[L,U,P] = lu(A) % this gives the full PA = LU factorization. Could be problematic for a large matrix.

%% Not outputting P
[L,U] = lu(A) % L is not lower triangular.  Actually outputs A = inv(P)L U

%% What what about one output?
LU = lu(A); % where is P?
L = eye(5) + tril(LU,-1);
U = triu(LU);
L*U
A

%% Example: Adding all the entries in a matrix, not square
A = randi(3,5,6) - 1;

%% double loop
[m,n] = size(A);
SUM = 0;
for i = 1:m
    for j = 1:n
        SUM = SUM + A(i,j);
    end
end
SUM

%% test the function
v = [1,1,1,1,1];
add_it_up(v) % at the bottom
add_it_up_version_two(v) % separate file

%% Yet another way to define a function (not so useful for linear algebra)
f = @(x) x^2;
f(2)

%% Back to adding matrix matrix entries: single loop
[m,n] = size(A);
SUM = 0;
for j = 1:n
    SUM = SUM + add_it_up(A(:,j));
end
SUM



%% Functions have to go at the bottom of a script  (alternatively, functions an be put in separate files)
function SUM = add_it_up(v)
    SUM = 0;
    m = length(v);
    for i = 1:m
        SUM = SUM + v(i);
    end
end
