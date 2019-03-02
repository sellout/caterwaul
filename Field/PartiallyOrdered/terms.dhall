let object = Type

let cat = ./../../Category/Set/monoidal/cartesian

let category = ./../../Function/category

let bifunctor = ./../../Tuple/functor/pair

in    λ(m : object)
    → λ(field : ./Type m)
    →   { eq = field.additive.eq, partialLE = field.additive.partialLE }
      ∧ ./../terms.dhall
        object
        cat
        category
        bifunctor
        m
        (./extractField m field)
