%{
#
-> EPHYS.ElectrodeGroup
-> EPHYS.CFAnnotationType
---
-> LAB.SkullReference
ml_location= null            : decimal(8,3)                  # um from ref ; right is positive; based on manipulator coordinates & probe config
ap_location= null            : decimal(8,3)                  # um from ref; anterior is positive; based on manipulator coordinates & probe config
dv_location= null            : decimal(8,3)                  # um from dura; ventral is positive; based on manipulator coordinates & probe config

%}


classdef ElectrodeGroupPosition < dj.Imported
 
    methods(Access=protected)
        function makeTuples(self, key)
        end
    end
end