%% Programming example 2
%% Your task is to compute the total number of comparisons used to sort the given input file by QuickSort. As you know, the number of comparisons depends on which elements are chosen as pivots, so we'll ask you to explore three different pivoting rules.
%% Version 1: For the first part of the programming assignment, you should always use the first element of the array as the pivot element. 
%% Version 2: always using the final element of the given array as the pivot element
%% Version 3: Compute the number of comparisons, using the "median-of-three" pivot rule. 


%% Includes:
%% openfile.m
%% quicksort.m
%% swap.m

%% Main
%%Variables
data=zeros(1);
					  %% size  first  last  median
%% data=(openfile ('testfiles/10.txt'));  %% 10    25     29    21
%% data=(openfile ('testfiles/100.txt')); %% 100   615      587      518
%% data=(openfile ('testfiles/1000.txt')); %% 1000 10297 10184  8921
 data=(openfile ('testfiles/QuickSort.txt')); %% 10000 162085 164123 138382

%%[data, numbers] = quicksort(data,1,length(data),'first');
%%[data, numbers] = quicksort(data,1,length(data),'last');
[data, numbers] = quicksort(data,1,length(data),'median');
data
numbers

