function [stimulusPresentationTime, fixPresentationTime, responseTime, keyResponse] = MooneyTrialTest( ...
    trialno, n_trials, window, imageTexture, blockStartTime, cfg, el, dummymode, tfun, sfun, stimLogFID)

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

    while (GetSecs - startTime) < cfg.imageDuration
        
        if ~keyResponse
            [keyIsDown, secs, keyCode] = KbCheck(-3);
            if keyIsDown
                temp = KbName(keyCode);
                if isempty(cfg.triggerkey) || isequal(temp(1), cfg.triggerkey)
                    disp('button pressed');
                    responseTime = GetSecs - blockStartTime;
                end
            end
        end
    end
end