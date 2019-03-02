let kArrow = ./../Function/Kind

let kProduct = ./../Tuple/Kind

in    λ(object : Kind)
    → λ(cat : ./../Category/Monoidal/Kind kArrow kProduct object)
    → λ(m : object)
    → λ(monoid : ./Type object cat m)
    →   monoid.{ identity }
      ∧ ./../Semigroup/terms.dhall
        object
        cat.arrow
        cat.op
        m
        (./extractSemigroup object cat m monoid)
