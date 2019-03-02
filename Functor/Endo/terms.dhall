let kArrow = ./../../Function/Kind

let kProduct = ./../../Tuple/Kind

in    λ(object : Kind)
    → λ(arrow : kArrow (kProduct object object) Type)
    → λ(f : kArrow object object)
    → λ(functor : ./Type object arrow f)
    → { map = functor.map }
