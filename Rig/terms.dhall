let kCat = ./../Category/Cat/semigroupal

let vObject = Type

in    λ(object : Kind)
    → λ(cat : ./../Category/Monoidal/Kind kCat vObject object)
    → λ(m : object)
    → λ(rig : ./Type object cat m)
    →   { zero = rig.additive.unit }
      ∧ ./../Semiring/terms.dhall
          object
          cat
          m
          (./extractSemiring object cat m rig)
