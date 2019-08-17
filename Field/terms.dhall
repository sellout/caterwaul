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
    → λ(field : ./Type object cat m)
    →   { divide =
            ./divide object cat category m field
        , reciprocal =
            field.multiplicative.inverse
        }
      ∧ ./../Ring/terms.dhall
          object
          cat
          category
          m
          (./extractRing object cat m field)
