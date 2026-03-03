function [fixPresentationTime, stimulusPresentationTime, responseTime, keyResponse] = MooneyMemoryTrialTest( ...
    trialno, n_trials, window, imageTexture, blockStartTime, cfg, el, dummymode, tfun, sfun)

    % Fixation show + in center
    DrawFormattedText(window, '+', 'center', 'center', .2);
    Screen('Flip', window);
    fixPresentationTime = GetSecs - blockStartTime;
    WaitSecs(3 + randn); % mean 3s sd 1s

    % Mooney image on screen
    Screen('DrawTexture', window, imageTexture);
    [~, trialStart] = Screen('Flip', window);
    stimulusPresentationTime = trialStart - blockStartTime;

    % Display image for 10 seconds
    startTime = GetSecs;
    responseTime = Inf;
    keyResponse = false;

    while (GetSecs - startTime) < cfg.imageMemoryDuration
        if ~keyResponse
            [keyIsDown, secs, keyCode] = KbCheck(-3);
            if keyIsDown
                temp = KbName(keyCode);
                if isempty(cfg.answerkey) || isequal(temp(1), cfg.answerkey)
                    disp('Answered');
                    responseTime = GetSecs - blockStartTime;
                    keyResponse = true;
                    KbReleaseWait(-3);
                end
            end
        end
    end
end