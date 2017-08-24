% Darlan Minussi

% InClass1: some simple excerises to get started with MATLAB. Please complete by
% the second class. Answer questions in comments and return assignment via
% github
%% numbers vs strings
% Run the following two sections. explain why one gives a sensible result and the other doesn't
% Can you explain the value of the variable b? 
x = 1; 
y = x + x
%%
a = '1';
b = a+a
% in x = 1 we are assigning an integer to a variable, and in variable y we
% are taking the sum of the value assigned to x, returning a result of (1 +
% 1 = 2). 

% However, in the a variable we are assigning a string/character
% and not a number to the variable.
% the value stored in b is the 8 -bit ascii value for the character b
%% concatenation
% what is being done by the following statements? what is the difference between x2 and a2? 
% what is the difference between x2 and x2b (hint run the size command on
% these arrays and explain the results). 

x2 = [x x]

a2 = [a a]

x2b = [x; x]

% in x2 we are creating an array with 1 row and 2 columns with the value of x 
% in a2 we are creating an array with the string '1' concatenated
% in x2b we are creating an array with 2 rows and 1 column with the value
% of x
%% = vs ==, isequal
% explain why the identical commands with the == commands give different answers 
% hint: check the values of a and b as you execute the following statements
% if necessary. 
a = 1; b =2; 

% assigns value 1 to a and value 2 to b

a == b

% compares if the values in a and b are equal, returns false

a = b;

% assigns to a the value in b

a == b

% compares if the values in a and b are equal, returns true


%explain the results of the following operations:
a = [1, 2, 4];
% creates an array with dimensions (1,3) in a

b = [0,2,7];
% creates an array with dimensions (1,3) in b

a == b
% compares element-wise a and b, returns false, true, false, since only the
% second element of each array is the same

%explain why this gives an error:

b = [2, 3];
a == b
% when we change the dimensions of b to (1,2) matlab cannot perform the
% element wise comparison

%explain why this does not give an error
b = 2;
a == b 

% when a variable contains a single variable matlab can compare each of the
% elements in array a to the value stored in variable b, returns false,
% true, false since only the second element of a is equal to 2
%%  : operator 
%(hint for the following type "help colon" at the command line to see
% how the ":" operator works
% the following makes an array of the numbers from one to ten: 
oneToTen = 1:10;

%here are two ways to make the array of numbers from 1 to twenty
%explain how the second line works.
1:20
[oneToTen, oneToTen+10]

% [oneToTen, oneToTen+10] is creating an array where the first 10 elemnts
% are the ones inside the oneToTen variable and last ten elements are the
% values on array oneToTen plus 10 for each element, generating an array
% with a sequence of numbers from 1 to twenty

% do each of the following in two different ways, by manipulating the array
% oneToTen and by defining it concisely from scratch

% 1. even numbers from two to twenty

2:2:20
% creates a sequence from 2 to 20 with increments of 2

[oneToTen*2]
% creates a sequence from 2 to 20 by multiplying each element of oneToTen
% by 2


% 2. odd numbers from one to nineteen

1:2:19
% creates a sequence from 1 to 19 with increment of 2

[(oneToTen*2)-1]
% creates a sequence from 2 to 20 by multiplying each element of oneToTen
% by 2 and, then, subtracts one from each element

% 3. Even numbers in reverse order from twenty to two (hint lookup the
% matlab function fliplr)

20:-2:2
fliplr(2:2:20)
fliplr(oneToTen*2)
% fliplr flips the array in left/right direction, showing a sequence from
% 20 to 2 and only the even numbers since we multiplied each element of
% oneToTen by 2


% explain why the fliplr funciton no longer works and find a different
% matlab function that performs an equivalent function on the same array
oneToTen = oneToTen';
% this command uses the ' operator to transpose the array one to ten from
% (1,10) to (10,1)
fliplr(oneToTen)
% fliplr function only flips along the second dimension of arrays to flip the
% first dimension we need to use flipud

flipud(oneToTen)
% flipud flips along the first dimension of arrays


%% matrices, . operator

%look at the matrix this defines. Note the other functions zeros, eye, and
%rand which can define matrices. 

m1 = ones(2);
m2 = 2*ones(2);

%explain the output of these two commands:
m1*m2

% matrix multiplication, the elements of the rows in the first matrix are
% multiplied by the elements of the columns in the second matrix

m1.*m2

% element wise multiplication of m1 and m2.

%explain this command:
m2./m1

% ./ is right array divide, m2./m1 denotes the element-by-element division
% of m2 by m1. m2(i,j)/m1(i,j)

%extra credit: explain why this command gives a warning:
m2/m1

% because matrix division is actually the multipling one matrix by the
% inverse of the other. If we take the inverse of m1 - inv(m1) - we can
% notice that matrix m1 does not have an inverse matrix and that is way we
% get the warning Matrix is singular to working precision

%% access particular elements and groups of elements

%define a random matrix

rand_nums = rand(5);

%explain what is being done in each of the following lines

% all commands are subsetting the matrix rand_nums

rand_nums(2,3)
% returns the element on the second row and third column of rand_nums 


rand_nums(2:4,3)
% returns elements from rows 2 to 4 of the third column of rand_nums

rand_nums(1:2,3:4)

% returns elements from rows one and two from the third and fourth column
% of rand_nums

rand_nums(:,2)

% returns all the rows from column 2 of rand_nums

rand_nums(1,:)

% returns the first row of all columns of rand_nums

rand_nums(:,[1 3 5])

% returns all rows from columns 1, 4 and 5 of rand_nums


