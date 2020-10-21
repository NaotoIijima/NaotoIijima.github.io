clear

%%
abspath = pwd;
dirname1 = [abspath,'\signal_45.wav'];
dirname2 = [abspath,'\signal_90.wav'];
dirname3 = [abspath,'\signal_135.wav'];
dirname4 = [abspath,'\signal_-45.wav'];
dirname5 = [abspath,'\signal_-90.wav'];
dirname6 = [abspath,'\signal_-135.wav'];
%%
[s1,~]=audioread(dirname1);
[s2,~]=audioread(dirname2);
[s3,~]=audioread(dirname3);
[s4,~]=audioread(dirname4);
[s5,~]=audioread(dirname5);
[s6,~]=audioread(dirname6);
all_sig_left=[s1(1:100000,:);s2(1:100000,:);s3(1:100000,:)];
all_sig_right=[s4(1:100000,:);s5(1:100000,:);s6(1:100000,:)];
%%
audiowrite('signal_all_left.wav',all_sig_left,48000);
audiowrite('signal_all_right.wav',all_sig_right,48000);
