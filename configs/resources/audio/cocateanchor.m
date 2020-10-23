clear

%%
abspath = 'C:\Users\Naoto Iijima\Documents\Experiment_inLab\patools\matlab_code\filter\dummy';
dirname1 = [abspath,'\guitar_90.wav'];
dirname2 = [abspath,'\guitar_-90.wav'];
dirname3 = [abspath,'\male_90.wav'];
dirname4 = [abspath,'\male_-90.wav'];
%%
[s1,~]=audioread(dirname1);
[s2,~]=audioread(dirname2);
[s3,~]=audioread(dirname3);
[s4,~]=audioread(dirname4);

%all_sig_left=[s3(1:120000,:);s3(1:120000,:);s3(1:120000,:)]; %for male
%all_sig_right=[s4(1:120000,:);s4(1:120000,:);s4(1:120000,:)];
all_sig_left=[s1(1:120000,:);zeros(2000,2);s1(1:120000,:);zeros(2000,2);s1(1:120000,:)]; % for guitar
all_sig_right=[s2(1:120000,:);zeros(2000,2);s2(1:120000,:);zeros(2000,2);s2(1:120000,:)];
%%
audiowrite('signal_all_left.wav',3*all_sig_left,48000);
audiowrite('signal_all_right.wav',3*all_sig_right,48000);
