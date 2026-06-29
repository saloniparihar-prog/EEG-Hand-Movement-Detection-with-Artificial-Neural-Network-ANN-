clc;
clear;
close all;

%% LOAD TRAINED MODEL
load('LeftRightHandANN.mat');

%% LOAD EEG DATASET
load('SubC_6chan_3LRF_s2.mat');   % <-- Replace with your EEG dataset file

%% SELECT ONE TRIAL
trial = EEGDATA(:,:,1);

%% FILTER EEG (8-30 Hz)
trial = bandpass(trial',[8 30],250)';

%% FEATURE EXTRACTION
test_features = [];

for ch = 1:6

    signal = trial(ch,:);

    feat = [
        mean(signal)
        std(signal)
        var(signal)
        max(signal)
        min(signal)
        ];

    test_features = [test_features; feat];

end

%% PREDICTION
output = net(test_features);

[confidence,prediction] = max(output);

confidence = confidence * 100;

%% DISPLAY RESULT
fprintf('\n=============================\n');

if prediction == 1

    fprintf('PREDICTION : LEFT HAND\n');

elseif prediction == 2

    fprintf('PREDICTION : RIGHT HAND\n');

end

fprintf('CONFIDENCE : %.2f %%\n',confidence);

fprintf('=============================\n');

%% PLOT EEG
figure;

plot(trial(1,:),'LineWidth',1.5);

title('EEG Signal - Channel 1');
xlabel('Samples');
ylabel('Amplitude');
grid on;