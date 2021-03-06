%{
# 
trial_event_type            : varchar(24)                   # 
%}


classdef TrialEventType < dj.Lookup
     properties
        contents = {
            'trigger ephys rec.'
            'delay'
            'go'
            'sample'
            'sample-start chirp'
            'sample-end chirp'
            'send scheduled wave'
            }
    end
end