fun max (xs: int list) = 
    if null xs
    then NONE
    else
        let val tlAns = max(tl xs)
        in
            if isSome tlAns andalso valOf tlAns > hd xs
            then tlAns
            else SOME(hd xs)
        end
