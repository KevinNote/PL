use "count.sml";

fun badMax (xs: int list) = 
    if null xs
    then 0
    else
        if null (tl xs)
        then hd xs
        else
            if hd xs > badMax(tl xs)
            then hd xs
            else badMax(tl xs)


fun goodMax (xs: int list) = 
    if null xs
    then 0
    else
        if null (tl xs)
        then hd xs
        else
            let val tlAns = goodMax(tl xs)
            in
                if hd xs > tlAns
                then hd xs
                else tlAns
            end
