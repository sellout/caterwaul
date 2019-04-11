let kCat = ./../../Category/Cat/semigroupal

let vObject = Type

let object = Type

let cat =
      ./../../Category/Monoidal/Cartesian/extractMonoidal
      kCat
      vObject
      object
      ./../../Category/Set/monoidal/cartesian

let category = ./../../Category/Set/category

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
