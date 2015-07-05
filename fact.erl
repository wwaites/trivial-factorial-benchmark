-module(fact).
-export([fact/1,main/0]).
-import(string, [to_integer/1]).
 
fact(N) when N == 0 -> 1;
fact(N) when N > 0  -> N*fact(N-1).

main() ->
    io:format("~p\n", [fact(200000)]).
