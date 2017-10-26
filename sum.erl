-module (sum).
-export ([sum1/1]).


%COLA
sum1(X)->sum1(X, 0).

sum1([H|T],Acc)->sum1(T,H+Acc);
sum1([], Acc)->Acc.