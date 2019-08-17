let kCat = ./../Category/Cat/semigroupal

let vObject = Type

let v =
      ./../Category/Monoidal/Cartesian/extractMonoidal
        kCat
        Type
        vObject
        ./../Category/Set/monoidal/cartesian

let vBase = ./../Category/Monoidal/extractCategory kCat Type vObject v

in    λ(object : Kind)
    → λ(cat : ./../Category/Kind kCat vObject object)
    → λ(semigroupoid : ./../Semigroupoid/Type object v cat cat.arrow)
    → λ(m : kCat.arrow object object)
    → λ(functor : ./../Functor/Endo/Type vObject object vBase cat m)
    → λ(monad : ./Type object cat m)
    → let extractStarfunctor =
            ./impliedStarfunctor object cat semigroupoid m functor monad
      
      in  { map =
              functor.map
          , pure =
              monad.unit
          , join =
              monad.product
          , bind =
              extractStarfunctor.map
          , extractStarfunctor =
              extractStarfunctor
          }
