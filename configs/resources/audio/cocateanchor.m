clear

%%
guitar = 0;
abspath = 'C:\Users\Naoto Iijima\Documents\Experiment_inLab\patools\matlab_code\filter\dummy';
if guitar == 1
    dirname1 = [abspath,'\guitar_45.wav'];
    dirname2 = [abspath,'\guitar_90.wav'];
    dirname3 = [abspath,'\guitar_135.wav'];
    dirname4 = [abspath,'\guitar_-45.wav'];
    dirname5 = [abspath,'\guitar_-90.wav'];
    dirname6 = [abspath,'\guitar_-135.wav'];
    dirname7 = [abspath,'\guitar_0.wav'];
else
    dirname1 = [abspath,'\male_45.wav'];
    dirname2 = [abspath,'\male_90.wav'];
    dirname3 = [abspath,'\male_135.wav'];
    dirname4 = [abspath,'\male_-45.wav'];
    dirname5 = [abspath,'\male_-90.wav'];
    dirname6 = [abspath,'\male_-135.wav'];
    dirname7 = [abspath,'\male_0.wav'];
end



%%
[s1,~]=audioread(dirname1);
[s2,~]=audioread(dirname2);
[s3,~]=audioread(dirname3);
[s4,~]=audioread(dirname4);
[s5,~]=audioread(dirname5);
[s6,~]=audioread(dirname6);
[s7,~]=audioread(dirname7);

if guitar == 0
    all_sig_left=[s1(1:120000,:);s2(1:120000,:);s3(1:120000,:)]; %for male
    all_sig_right=[s4(1:120000,:);s5(1:120000,:);s6(1:120000,:)];
    all_sig_mid=[s1(1:120000,:);s7(1:120000,:);s4(1:120000,:)];
else
    all_sig_left=[s1(1:120000,:);zeros(2000,2);s2(1:120000,:);zeros(2000,2);s3(1:120000,:)]; % for guitar
    all_sig_right=[s4(1:120000,:);zeros(2000,2);s5(1:120000,:);zeros(2000,2);s6(1:120000,:)];
    all_sig_mid=[s1(1:120000,:);zeros(2000,2);s7(1:120000,:);zeros(2000,2);s4(1:120000,:)];
end
%%
audiowrite('signal_all_left.wav',all_sig_left,48000);
audiowrite('signal_all_right.wav',all_sig_right,48000);
audiowrite('signal_all_mid.wav',all_sig_mid,48000);
