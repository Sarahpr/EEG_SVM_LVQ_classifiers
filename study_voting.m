%1,6,11,16,21
clear all
clc
%my_lvq(class,6)
%svm2(class1,class2, channel)
%getsubject(subject,channel)


%% s = subject; ch = channel no; binary: class to class efficiency
s = 1;
for i = 1:1:5
    [P , Tc , targets] = getsubject(s,i);
    ip{i} = P';
    tar{i} = targets;
end


%train 5 neural netwroks 
for i = 1:1:5
net(i) = lvq_full(ip{i}, tar{i});
end