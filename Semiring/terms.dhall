let kArrow = ./../Function/Kind

let kProduct = ./../Tuple/Kind

let vObject = Type

in    λ(object : Kind)
    → λ(cat : ./../Category/Monoidal/Kind kArrow kProduct vObject object)
    → λ(m : object)
    → λ(semiring : ./Type object cat m)
    → { add =
          semiring.additive.op
      , multiply =
          semiring.multiplicative.op
      , one =
          semiring.multiplicative.identity
      }
