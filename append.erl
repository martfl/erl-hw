-module (append).
-export ([app1/2, appCps/2, appfold/2]).

%NORMAL
app1([H|T],Tail)->[H|app1(T, Tail)];
app1([],Tail)->Tail.

%Cps
appCps(Lst1, Lst2) -> appCps(Lst1, Lst2, fun (X) -> X end).

appCps([], Lst2, K) -> K(Lst2);
appCps([H | T], Lst2, K) -> appCps(T, Lst2, fun (X) -> K([H | X]) end).

%foldr
appfold(Lst1, Lst2) -> lists:foldr(fun(H,T)->[H|T] end, Lst2, Lst1).