te_gc = struct2cell(fetch(EXP.TrialEvent & 'trial_event_type="go"','*'));



% te = fetch(EXP.TrialEvent,'*')
% b = fetch(EXP.BehaviorTrial,'*')


c = (EXP.TrialEvent ) * (EXP.BehaviorTrial & 'early_lick="no early"') * (EXP.BehaviorTrialTest & 'early_lick_test="early lick"') * (EXP.ActionEvent)   ;
f = c.fetch('*');


% usefull commands: inserti  insertreplacef = c.fetch('*');

% fetch(s1.Session & sprintf('session_date = "%s"',currentSessionDate))
% te = fetch(EXP.TrialEvent, 'ORDER BY trial_event_type' )
% fetch(rel, 'ORDER BY attr1 DESC, attr2, attr3 DESC')
% a= fetchn(EXP.ActionEvent & 'action_event_type="left lick"', 'action_event_time')
% key = fetch(EXP.Session & sprintf('subject_id=%d',currentSubject_id),'session');
% key = fetch(EXP.Session,'subject_id','session' & 'subject_id=currentSubject_id' &  'session=currentSession' );

% c = (EXP.TrialEvent & 'trial_event_type="go"') * EXP.BehaviorTrial * EXP.BehaviorTrialTest ;
% c = (EXP.TrialEvent ) * (EXP.BehaviorTrial & 'early_lick="early"') * (EXP.BehaviorTrialTest & 'early_lick_test!="no early"')   ;

% f = c.fetch('*');

