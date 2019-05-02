let kCat = ./../Cat/semigroupal

let MonoidalCategory = ./../Monoidal/Kind kCat

let vObject = Type

in    λ(object : Kind)
    → λ(v : MonoidalCategory Type vObject)
    → λ(cat : MonoidalCategory vObject object)
    → ./../Monoidal/types.dhall object v (./monoidal vObject object cat)
