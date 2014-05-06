%% Programming example 1
%% find the numbers of inversions in a huge array

%% Includes:
%% openfile.m

%% Main
%%Variables
inversion=0;
data=zeros(1);

%%data=(openfile ('testfiles/TestFile.txt')); %%3
%%data=(openfile ('testfiles/VerySmallTestFile.txt')); %%590
%%data=(openfile ('testfiles/SmallTestFile.txt')); %%242698 
data=(openfile ('testfiles/IntegerArray.txt'));

%%divide & conquer
format long;
inversion = findinversion(data);
disp (inversion)
%%inversion = bruteforce(data)
