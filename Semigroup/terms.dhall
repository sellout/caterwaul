let kArrow = ./../Function/Kind

let kProduct = ./../Tuple/Kind

in    λ(object : Kind)
    → λ(cat : ./../Category/Semigroupal/Kind kArrow kProduct object)
    → λ(m : object)
    → λ(semigroup : ./Type object cat m)
    → semigroup.{ op }
