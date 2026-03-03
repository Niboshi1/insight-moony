function taskmode = prompt_mode()
    answ = inputdlg('Main?', 'Version', 1, {'1'});
    taskmode = str2double(answ);
    if isnan(taskmode)
        taskmode = 1;
    end
end