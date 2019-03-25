let kArrow = ./../../Function/Kind

let kProduct = ./../../Tuple/Kind

let vObject = Type

in    λ(object : Kind)
    → λ(v : ./../Monoidal/Kind kArrow kProduct Type vObject)
    → λ(cat : ./Kind kArrow kProduct vObject object)
    →   { Arrow =
            ./../../Arrow/Type object v cat
        , Semigroup =
            ./../../Semigroup/Type object cat
        }
      ∧ ./../types.dhall
        object
        v
        (./extractCategory kArrow kProduct vObject object cat)
