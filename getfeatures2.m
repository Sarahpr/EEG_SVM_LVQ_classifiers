%function [P, Tc , targets] = getsubject(n,i)
clear all
n = 1;

if(n>5)
    disp 'nonsense'
    pause
end 
load eegdata;

task1 = data{n}{4};
t1 = [];
for i = 1:1:5
t1 = [t1 ; task1(i,:)];
end

for i = 1:1:5
set{i} = reshape(t1(i,:),100,25);
end
% 
f1 = getfeatures(set{1});
% n= n +5;
% task2 = data{n}{4};
% t2 = task2(i,:);
% t2 = t2(1:2500);
% set = reshape(t2,100,25);
% 
% f2 = getfeatures(set);
% 
% n= n +5;
% task = data{n}{4};
% t = task(i,:);
% t = t(1:2500);
% set = reshape(t,100,25);
% 
% f3 = getfeatures(set);
% 
% n= n +5;
% task = data{n}{4};
% t = task(i,:);
% t = t(1:2500);
% set = reshape(t,100,25);
% 
% f4 = getfeatures(set);
% n= n +5;
% task = data{n}{4};
% t = task(i,:);
% t = t(1:2500);
% set = reshape(t,100,25);
% 
% f5 = getfeatures(set);
% 
% 
% t1 = [1 1 1 1 1];
% t2 = [2 2 2 2 2];
% t3 = [3 3 3 3 3];
% t4 = [4 4 4 4 4];
% t5 = [5 5 5 5 5];
% P = [f1 f2 f3 f4 f5]';
% %LVQ
% Tc = [t1 t1 t1 t1 t1 t2 t2 t2 t2 t2 t3 t3 t3 t3 t3 t4 t4 t4 t4 t4 t5 t5 t5 t5 t5]';
% T = ind2vec(Tc);
% targets = full(T);