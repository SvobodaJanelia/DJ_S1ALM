%{
# Sorted unit
-> EPHYS.ElectrodeGroup
unit  : smallint
---
unit_id   : int auto_increment   # unique across sessions/animals
unit_quality    = null      : smallint                      # unit quality; 2 - single unit; 1 - probably single unit; 0 - multiunit
waveform : blob    # unit average waveform, each point corresponds to a sample. (what are the amplitude units?)  To convert into time use the sampling_frequency.
unit_channel    = null      : float                      # channel on the probe for each the unit has the largest amplitude (verify that its based on amplitude or other feature)

unique index (unit_id)

%}


classdef Unit < dj.Imported
    
    methods(Access=protected)
        function makeTuples(self, key)
            obj = EXP.getObj(key);
            
            for iUnits = 1:size(obj.eventSeriesHash.value,2)
                key.unit = iUnits;
%                 key.unit_id = size(fetch(EPHYS.Unit),1) + 1;
%                 key.unit_hemisphere =  fetch1(s1.ExtracelProbe & key, 'recording_hemisphere');
%                 key.unit_brain_area =  fetch1(s1.ExtracelProbe & key, 'recording_brain_area');
%                 key.unit_x = obj.eventSeriesHash.value{iUnits}.position_ML;
%                 key.unit_y = obj.eventSeriesHash.value{iUnits}.position_AP;
%                 key.unit_z = obj.eventSeriesHash.value{iUnits}.depth;
                key.unit_quality = obj.eventSeriesHash.value{iUnits}.quality;
                key.unit_channel = obj.eventSeriesHash.value{iUnits}.channel;
                key.waveform = obj.eventSeriesHash.value{iUnits}.waveforms;
                
                self.insert(key)
            end
            fprintf('Populated %d units recorded from animal %d  on %s', iUnits, key.subject_id, fetch1(EXP.Session & key,'session_date'))
            
        end
    end
end

