function cfg = config_fixstim()
%CONFIG_FIXSTIM Central place for experiment constants.

% ---- Mode switches ----
cfg.ptbOnly = true;     % <-- set true to run PTB task only (no EyeLink at all)

% ---- Mooney images path ----
cfg.stimDir = 'stimulus_set'; % directory of Mooney images relative to current directory

% ---- Timing ----
cfg.imageDuration    = 10; % maximum duration the image is shown
cfg.blankDuration    = 4; % interval between Mooney image presentation and response
cfg.responseDuration = 2.0; % 
cfg.minInterval      = 1.5; % minimum inverval between each trial
cfg.maxInterval      = 2.5; % maximum interval between each trial

% ---- Stim presentation ----
cfg.targetWidth      = 1024;

% filled in at runtime:
cfg.wwidth = [];
cfg.hheight = [];
cfg.screenNumber = [];
cfg.triggerkey = 't';

end