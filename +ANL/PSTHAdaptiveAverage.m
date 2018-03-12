%{
#
-> ANL.PSTH
-> ANL.TrialTypes
-> EXP.Outcome
---
num_trials_averaged             : longblob    # number of trials averaged per condition, for this unit. Because this is an adaptive average, the total number of trials refers to trials that were included for the entire trial-duration. 
psth_adaptive_avg               : longblob    # adaptive trial-type averaged PSTH aligned to go cue time. If a trial contains a photostim stimulations, the time epochs before the first stimulation are averaged together with corresponding no-photostim epochs from other trials 
%}


classdef PSTHAdaptiveAverage < dj.Part
    properties(SetAccess=protected)
        master= ANL.PSTH
    end
    methods
        function makeTuples(self, key)
        end
    end
end