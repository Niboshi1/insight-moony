function close_logs(logFID)
    if ~isempty(logFID) && logFID > 0
        fclose(logFID);
    end
end