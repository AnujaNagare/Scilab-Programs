clc;
clear;

G=[2 6 0 0 0 0;3 9 0 0 0 0;0 0 1 2 0 0;...
0 0 3 4 0 0;0 0 0 0 -5 5;0 0 0 0 5 3];

disp(G)

disp(G(2,2),'access rows and columns')
disp(size(G),'find size of matrix')
disp(length(G),'find length of matrix')
disp(G(1:4,1:4),'access sub-matrix')
disp(G','find transpose of matrix')

a=0.25
disp(a^-1,'find inverse')

a=[1 2 3]; b=[5 6 7];
disp(a,'matrix a: ')
disp(b,'matrix b: ')
disp([a b],'Append row or column to matrix')


