# Part A: Week 2

## Rule of Expression

```
Syntax:
    if e1 then e2 else e3
  where if, then, else are keywords and
        e1, e2, e3 are subexpressions

Type-checking:
  first, e1 ust have type bool
  then, e2 and e3 must have the any type, but must be the same type
  the type of the entire expression is the type of e2

Evaluation rules:
  first, eval e1 to value v1
  if v1 is true, then eval e2 to value v2, and v2 is the exp's result
  otherwise, eval e3 to value v3, and v3 is the exp's result
```

## Tuple

- Tuple: fixed number of different types elements
- List: any number of same type elements
- Pair: 2-tuple

## List

- Empty list: `[]`
- Construct: `e1::e2`
- Null check (check is `[]`): `null e`
- Get head (first ele of list): `hd e`, this will rise exception if `e` is `[]`
- Get tail (rest of list): `tl e`, this will rise exception if `e` is `[]`

### Type

- Type: `t list`
- `[] : 'a list`
- `e1::e2 : (e1: t) -> (e2: t list) -> t list`
- `null : 'a list -> bool`
- `hd : 'a list -> 'a`
- `tl : 'a list -> 'a list`

## Let

`let b1, b2, ..., bn in e end`