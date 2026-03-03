function [logFID, logFileName] = init_logs(edfFile, taskmode)
    if taskmode == 1
        logFileName = [edfFile '_probsolv_experiment_log.txt'];
        logFID = fopen(logFileName, 'w');
        fprintf(logFID, 'Trial\tFixation_Onset\tStimulus_Onset\tResponse_Onset\tPrompt_Answer_Onset\tAnswered\n');
    else
        logFileName = [edfFile '_memory_experiment_log.txt'];
        logFID = fopen(logFileName, 'w');
        fprintf(logFID, 'Trial\tFixation_Onset\tStimulus_Onset\tResponse_Onset\tPrompt_Familiar_Onset\tKeyFamiliar\tPrompt_Recognition_Onset\tKeyRecognition\tPrompt_Answer_Onset\tAnswered\n');
    end
end