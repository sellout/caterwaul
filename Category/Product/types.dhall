let cat = ./../Cat/semigroupal

let vObject = Type

let Category = ./../Kind cat

let MonoidalCategory = ./../Monoidal/Kind cat

in    λ(cObject : Kind)
    → λ(dObject : Kind)
    → λ(v : MonoidalCategory Type vObject)
    → λ(c : Category vObject cObject)
    → λ(d : Category vObject dObject)
    → ./../types.dhall
        { _1 : cObject, _2 : dObject }
        v
        ( ./Kind
            cObject
            dObject
            (./../Monoidal/extractSemigroupal cat Type vObject v)
            c
            d
        )
