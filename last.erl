-module (last).
-export ([last1/1]).

last1([H|[]])->H;
last1([_|T])->last1(T).