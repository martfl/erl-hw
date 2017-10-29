-module (reverse).
-export ([rev1/1, revNormal/1, revCps/1]).


%COLA Cps???
rev1(X)->rev1(X, []).

rev1([H|T],Acc)->rev1(T,[H|Acc]);
rev1([], Acc)->Acc.

%Normal
revNormal([H|T]) -> revNormal(T)++[H];
revNormal([]) -> [].

%cps
revCps(Lst) -> revCps(Lst, fun(X) -> X end).

revCps([], K) -> K([]);
revCps([H | T], K) -> revCps(T, fun (X) -> K([X | H]) end).