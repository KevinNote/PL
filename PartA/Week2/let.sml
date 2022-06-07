(* int -> int *)
fun silly1 (z: int) =
    let
        val x = if z > 0 then z else 1
        val y = x + z +2
    in
        if x > y
        then x * 2
        else y * y
    end

fun silly2 () =
    let
        val x = 2
    in
        (*       v shadow above x                   v use silly2's let*)
        (let val x = 2 in x + 1 end) + (let val y = x+2 in y+1 end)
        (*       x=2   -> ret. 3     +          y=4     -> ret. 5*)
    end