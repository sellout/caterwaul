let cat = ./../Cat/semigroupal

let vObject = Type

let Category = ./../Kind cat

let MonoidalCategory = ./../Monoidal/Kind cat

let base = ./../Monoidal/extractCategory cat

in    λ(cObject : Kind)
    → λ(dObject : Kind)
    → λ(v : MonoidalCategory Type vObject)
    → λ(c : Category vObject cObject)
    → λ(d : Category vObject dObject)
    → ./../types.dhall
        (cat.arrow cObject dObject)
        v
        (./category cObject dObject (base Type vObject v) c d)
