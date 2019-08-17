let kCat = ./../Category/Cat/semigroupal

let vObject = Type

in    λ(object : Kind)
    → λ(cat : ./../Category/Monoidal/Kind kCat vObject object)
    → λ(m : object)
    → λ(monoid : ./Type object cat m)
    →   monoid.{ unit }
      ∧ ./../Semigroup/terms.dhall
          object
          (./../Category/Monoidal/extractSemigroupal kCat vObject object cat)
          m
          (./extractSemigroup object cat m monoid)
