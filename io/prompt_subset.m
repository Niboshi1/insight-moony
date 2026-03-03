function subsetId = prompt_subset()
    answ = inputdlg('Mooney subset', 'Version', 1, {'1'});
    subsetId = str2double(answ);
    if isnan(subsetId)
        subsetId = 1;
    end
end