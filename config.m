function cfg = config_fixstim()
%CONFIG_FIXSTIM Central place for experiment constants.

% ---- Mode switches ----
cfg.ptbOnly = true;     % <-- set true to run PTB task only (no EyeLink at all)

% ---- Moony images path ----
cfg.stimDir = 'stimulus_set'; % relative to current directory

% ---- Timing ----
cfg.imageDuration    = 2.5;
cfg.blankDuration    = 0.5;
cfg.responseDuration = 2.0;
cfg.minInterval      = 1.5;
cfg.maxInterval      = 2.5;

% ---- Stim presentation ----
cfg.targetWidth      = 1024;

% filled in at runtime:
cfg.wwidth = [];
cfg.hheight = [];
cfg.screenNumber = [];
cfg.triggerkey = 't';
end