%% Programming example 2
%% Your task is to compute the total number of comparisons used to sort the given input file by QuickSort. As you know, the number of comparisons depends on which elements are chosen as pivots, so we'll ask you to explore three different pivoting rules.
%% Version 1: For the first part of the programming assignment, you should always use the first element of the array as the pivot element. 
%% Version 2: always using the final element of the given array as the pivot element
%% Version 3: Compute the number of comparisons, using the "median-of-three" pivot rule. 


%% Includes:
%% openfile.m

%% Main
%%Variables
inversion=0;
data=zeros(1);

data=(openfile ('testfiles/QuickSort.txt'));

%% if n = 1 return n

%% chose pivot

%% if pivot is not the first element, swap pivot with first element!

%% partition a around pivot
%% if data[i] < pivot then left of pivot
%% if data[i] > pivot then right of pivot
%% j = boundary between partinioed and unpartinioed area in the array
%% i = boundary between part in the array that is sorted and lower than the pivot and the are that is bigger

%% after patitioning move the pivot to its right space 

%% recursively sort data_1
%% recursively sort data_2

