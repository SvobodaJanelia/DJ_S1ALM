%{
# 
-> EXP.BehaviorTrial
-> EXP.TrialEventType
trial_event_time            : decimal(8,4)                  # (s) from trial start
---
duration                    : decimal(8,4)                  # (s)
%}


classdef BehaviorTrialEvent < dj.Part
        properties(SetAccess=protected)
        master=EXP.BehaviorTrial
    end
     methods(Access=protected)
        function makeTuples(self, key)
        end
    end
end