let kArrow = ./../Function/Kind

let kProduct = ./../Tuple/Kind

let vObject = Type

let v = ./../Category/Set/monoidal/cartesian

in    λ(object : Kind)
    → λ(cat : ./../Category/Monoidal/Kind kArrow kProduct vObject object)
    → let base =
            ./../Category/Monoidal/extractCategory
            kArrow
            kProduct
            vObject
            object
            cat
      
      in    λ(category : ./../Category/Type object v base)
          → λ ( bifunctor
              : ./../Functor/Bifunctor/Type
                vObject
                object
                object
                object
                v
                base
                base
                base
                cat.op
              )
          → λ(m : object)
          → λ(group : ./Type object cat m)
          →   { inverse =
                  group.inverse
              , leftQuotient =
                  ./leftQuotient object cat category bifunctor m group
              , rightQuotient =
                  ./rightQuotient object cat category bifunctor m group
              }
            ∧ ./../Monoid/terms.dhall
              object
              cat
              m
              (./extractMonoid object cat m group)
