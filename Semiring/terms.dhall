let kCat = ./../Category/Cat/semigroupal

let vObject = Type

in    λ(object : Kind)
    → λ(cat : ./../Category/Monoidal/Kind kCat vObject object)
    → λ(m : object)
    → λ(semiring : ./Type object cat m)
    → { add =
          semiring.additive.product
      , multiply =
          semiring.multiplicative.product
      , one =
          semiring.multiplicative.unit
      }
