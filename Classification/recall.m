function output = recall(tp,fn)
%
% 
% Recall = tp/(tp+fn)
%
%
% Inputs 
%    tp: True Positive
%    fn: False Negative
% Outputs
%    recall measure

output = tp./(tp+fn);


end
