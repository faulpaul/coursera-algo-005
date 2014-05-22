%% Programming example 
%% Your task is to code up and run the randomized contraction algorithm for the min cut problem and use it on the above graph to compute the min cut. (HINT: Note that you'll have to figure out an implementation of edge contractions. Initially, you might want to do this naively, creating a new graph from the old every time there's an edge contraction. But you should also think about more efficient implementations.) (WARNING: As per the video lectures, please make sure to run the algorithm many times with different random seeds, and remember the smallest cut that you ever find.) Write your numeric answer in the space provided. So e.g., if your answer is 5, just type 5 in the space provided.

%% Includes:
%% openfile.m

%% Main
%%Variables
data=zeros(1);
 data=(openfile ('testfiles/testcase1.txt'));  %% results 2
%% data=(openfile ('testfiles/testcase2.txt')); %% results 1
%% data=(openfile ('testfiles/testcase3.txt')); %% results 3
%% data=(openfile ('testfiles/kargerMinCut.txt'));

data
