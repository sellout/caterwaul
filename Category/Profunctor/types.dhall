let kCat = ./../Cat/semigroupal

let Category = ./../Kind kCat

let MonoidalCategory = ./../Monoidal/Kind kCat

let vObject = Type

in    λ(object : Kind)
    → λ(v : MonoidalCategory Type vObject)
    → λ(cat : Category vObject object)
    → ./../Semigroupal/types.dhall
        (kCat.arrow (kCat.product object object) vObject)
        v
        (./semigroupal object v cat)
