function [promptTime, quitNow] = responseTrial(window, keyResponse, blockStartTime)
    quitNow = false;

    if keyResponse % if answered
        % Fixation show + in center
        DrawFormattedText(window, '+', 'center', 'center', .2);
        Screen('Flip', window);
        fixPresentationTime = GetSecs - blockStartTime;
        WaitSecs(3 + randn); % mean 3s sd 1s

        % Prompt for vocal response
        resptext = 'Please answer what you saw';
        DrawFormattedText(window, resptext, 'center', 'center', .2);
        Screen('Flip', window);
        promptTime = GetSecs - blockStartTime;
        WaitSecs(5);

    else % if not able to solve
        % Prompt for key press TODO: decide on response key
        resptext = 'Please press key to proceed';
        DrawFormattedText(window, resptext, 'center', 'center', .2);
        Screen('Flip', window);
        promptTime = GetSecs - blockStartTime;
        while true
            [keyIsDown, ~, keyCode] = KbCheck;
            if keyIsDown
                if strcmpi(pressedKey, 'Q')
                    quitNow = true;
                    return;
                end
                break
            end
        end
    end
end