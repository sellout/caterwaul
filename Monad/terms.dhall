    let kArrow = ./../Function/Kind

in  let kProduct = ./../Tuple/Kind

in    λ(object : Kind)
    → λ(arrow : kArrow (kProduct object object) Type)
    → λ(semigroupoid : ./../Semigroupoid/Type object arrow)
    → λ(m : kArrow object object)
    → λ(functor : ./../Functor/Endo/Type object arrow m)
    → λ(monad : ./Type object arrow m)
    →     let extractStarfunctor =
                ./impliedStarfunctor object arrow semigroupoid m functor monad
      
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
