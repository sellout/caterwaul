let kArrow = ./../Function/Kind

let kProduct = ./../Tuple/Kind

let vObject = Type

let v = ./../Category/Set/monoidal/cartesian

let vBase =
      ./../Category/Monoidal/extractCategory kArrow kProduct Type vObject v

in    λ(object : Kind)
    → λ(cat : ./../Category/Kind kArrow kProduct vObject object)
    → λ(semigroupoid : ./../Semigroupoid/Type object v cat cat.arrow)
    → λ(m : kArrow object object)
    → λ(functor : ./../Functor/Endo/Type vObject object vBase cat m)
    → λ(monad : ./Type object cat m)
    → let extractStarfunctor =
            ./impliedStarfunctor object cat semigroupoid m functor monad
      
      in  { map =
              functor.map
          , pure =
              monad.identity
          , join =
              monad.op
          , bind =
              extractStarfunctor.map
          , extractStarfunctor =
              extractStarfunctor
          }
