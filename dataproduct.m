%
% Project Title: Data for FJSP in MATLAB
%
% Developer: ZZM in HUST
%
% Contact Info:hust_zzm@hust.edu.cn
%

clc;
clear;
close all;

job_num=randi([12,18]);
machine=[1:1:randi([10,16])];
job_info=cell(4);
total_process=0;
for j=1:job_num
    process_num=randi([5,20]);
    total_process=total_process+process_num;
    job_info{total_process-process_num+1,1}=j;
    for k= total_process-process_num+1: total_process
         job_info{k,2}=k;
         machine_num=randi([2,4]);
         job_info{k,3}=machine(randperm(length(machine),machine_num));
         job_info{k,4}=randi([5,25]);
    end
end

for i=1:length(job_info)
job_info{i,3}=num2str(job_info{i,3});
end  %format

xlswrite('job_info 9',job_info);%write the filename
