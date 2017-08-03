function output = precision(tp,fp)
%
% 
% Precision = tp/(tp+fp)
% 
%
% Inputs 
%    tp: True Positive
%    fp: False Positive
% Outputs
%    precision measure

output = tp./(tp+fp);


end
