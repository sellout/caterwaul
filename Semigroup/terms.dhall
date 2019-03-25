let kArrow = ./../Function/Kind

let kProduct = ./../Tuple/Kind

let vObject = Type

in    λ(object : Kind)
    → λ(cat : ./../Category/Semigroupal/Kind kArrow kProduct vObject object)
    → λ(m : object)
    → λ(semigroup : ./Type object cat m)
    → semigroup.{ op }
