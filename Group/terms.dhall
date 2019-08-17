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
    → λ(group : ./Type object cat m)
    →   { inverse =
            group.inverse
        , leftQuotient =
            ./leftQuotient object cat category m group
        , rightQuotient =
            ./rightQuotient object cat category m group
        }
      ∧ ./../Monoid/terms.dhall
          object
          cat
          m
          (./extractMonoid object cat m group)
