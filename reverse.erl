-module (reverse).
-export ([rev1/1]).


%COLA
rev1(X)->rev1(X, []).

rev1([H|T],Acc)->rev1(T,[H|Acc]);
rev1([], Acc)->Acc.
