fun sumList (xs: int list) = 
    if null xs
    then 0
    else hd xs + sumList (tl xs)

fun countdown (x: int) =
    if x <= 0
    then []
    else x :: countdown(x-1)

fun append (xs: int list, ys: int list) =
    if null xs
    then ys
    else (hd xs) :: append((tl xs), ys)

fun sumPairList(xs: (int * int) list) =
    if null xs
    then 0
    else #1 (hd xs) + #2 (hd xs) + sumPairList(tl xs)

fun firsts (xs: (int * int) list) =
    if null xs
    then []
    else (#1 (hd xs)) :: firsts(tl xs)

fun seconds (xs: (int * int) list) =
    if null xs
    then []
    else (#2 (hd xs)) :: seconds(tl xs)

fun sumPairList2 (xs: (int * int) list) =
    (sumList(firsts xs)) + (sumList(seconds xs))

val xs = [(3, 4), (5, 6), (9, ~3)]

val sum1 = sumPairList(xs)

val sum2 = sumPairList2(xs)