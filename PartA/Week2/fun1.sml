(*Type: fn:int*int->int *)
fun pow(x: int, y: int) =
    if y = 0
    then 1
    else x * pow(x, y - 1)

(*Type: fn:int->int *)
fun cube(x: int) =
    pow(x, 3)

val r1 = pow(1, 3)

(* Not allowed pow 1, 3 or pow 1 3*)

val input = (2, 3);
val ans = pow x