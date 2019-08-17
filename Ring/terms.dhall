let kCat = ./../Category/Cat/semigroupal

let vObject = Type

let v =
      ./../Category/Monoidal/Cartesian/extractMonoidal
        kCat
        Type
        vObject
        ./../Category/Set/monoidal/cartesian

in    λ(object : Kind)
    → λ(cat : ./../Category/Monoidal/Kind kCat vObject object)
    → λ(category : ./../Category/Monoidal/Type object v cat)
    → λ(m : object)
    → λ(ring : ./Type object cat m)
    →   { negate =
            ring.additive.inverse
        , subtract =
            ./subtract object cat category m ring
        }
      ∧ ./../Rig/terms.dhall object cat m (./extractRig object cat m ring)
