for i = 1:10

    trial = EEGDATA(:,:,i);

    trial = bandpass(trial',[8 30],250)';

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

    output = net(test_features);

    [~,prediction] = max(output);

    if prediction == 1

        write(s,'L',"char");
        disp("LEFT HAND");

    else

        write(s,'R',"char");
        disp("RIGHT HAND");

    end

    pause(2);

end