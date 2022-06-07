(* Type: (int * bool) -> (bool * int) *)
fun swap (pair: int * bool) =
    (#2 pair, #1 pair)

(* Type: (int * int) -> (int * int) -> int *)
fun sumTwoPairs(pr1: int * int, pr2: int * int) = 
    (#1 pr1) + (#2 pr1) + (#1 pr2) + (#2 pr2)

(* Type: (int * int) -> (int * int) *)
fun divMod (x: int, y: int) =
    (x div y, x mod y)

(* Type: (int * int) -> (int * int) *)
fun sortPair (pr: int * int) =
    if (#1 pr) < (#2 pr)
    then pr
    else (#2 pr, #1 pr)