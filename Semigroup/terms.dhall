let kCat = ./../Category/Cat/semigroupal

let vObject = Type

in    λ(object : Kind)
    → λ(cat : ./../Category/Semigroupal/Kind kCat vObject object)
    → λ(m : object)
    → λ(semigroup : ./Type object cat m)
    → semigroup.{ product }
