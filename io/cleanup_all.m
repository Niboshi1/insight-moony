function cleanup_all(window, ptbOnly, logFID, stimLogFID)
    try Screen('CloseAll'); catch, end
    try
        if ~ptbOnly
            Eyelink('Shutdown');
        end
    catch
    end
    ListenChar(0);
    ShowCursor;
    if ~IsOctave; commandwindow; end
    close_logs(logFID, stimLogFID);
end