%% Programming example 1
%% find the numbers of inversions in a huge array

%% Includes:
%% openfile.m

%% Main
%%Variables
inversion=0;
data=zeros(1);

data=(openfile ('VerySmallTestFile.txt')); %%590
%%data=(openfile ('SmallTestFile.txt')); %%242698 
%%data=(openfile ('IntegerArray.txt'));

%%divide & conquer
inversion = findinversion(data)
inversion = findinternalinversion(data)
