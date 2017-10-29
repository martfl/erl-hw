-module (sum).
-export ([sum1/1, sum2/1, sumCps/1]).


%COLA
sum1(X)->sum1(X, 0).

sum1([H|T],Acc)->sum1(T,H+Acc);
sum1([], Acc)->Acc.

%normal
sum2([H|T]) -> H+sum2(T);
sum2([]) -> 0.

%cps
sumCps(Lst) -> sumCps(Lst, fun(X) -> X end).

sumCps([], K) -> K(0);
sumCps([H | T], K) -> sumCps(T, fun(X) -> K(X+H) end).