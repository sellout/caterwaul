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
    → let base = ./../Category/Monoidal/extractCategory kCat vObject object cat
      
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
                cat.product
              )
          → λ(m : object)
          → λ(field : ./Type object cat m)
          →   { divide =
                  ./divide object cat category bifunctor m field
              , reciprocal =
                  field.multiplicative.inverse
              }
            ∧ ./../Ring/terms.dhall
              object
              cat
              category
              bifunctor
              m
              (./extractRing object cat m field)
