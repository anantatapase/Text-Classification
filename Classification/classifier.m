function [tp,fp,fn]=classifier(X,Y)
Mdl = fitcknn(X,Y,'NumNeighbors',5);
result=resubPredict(Mdl);
conmat=confusionmat(Y,result);

tp=diag(conmat);
tp=tp;
fp=sum(conmat)'-tp;
fn=sum(conmat')'-tp;
end
