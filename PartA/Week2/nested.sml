fun countFrom1(x: int) =
    let
        fun count(from: int, to: int) =
            if from = to
            then to::[]
            else from :: count(from + 1, to)
    in
        count(1, x)
    end


fun countFrom1_2(x: int) =
    let
        fun count(from: int) =
            if from = x
            then x::[]
            else from :: count(from + 1)
    in
        count(1)
    end
