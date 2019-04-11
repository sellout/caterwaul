let kCat = ./../Cat/semigroupal

let vObject = Type

in    λ(object : Kind)
    → λ(v : ./../Monoidal/Kind kCat Type vObject)
    → λ(cat : ./Kind kCat vObject object)
    →   { Arrow =
            ./../../Arrow/Type object v cat
        , Semigroup =
            ./../../Semigroup/Type object cat
        }
      ∧ ./../types.dhall object v (./extractCategory kCat vObject object cat)
