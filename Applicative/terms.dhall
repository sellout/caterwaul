    let kArrow = ./../Function/Kind

in  let object = Type

in  let cat = ./../Category/Set/monoidal/cartesian

in    λ(f : kArrow object object)
    → λ(applicative : ./Type object cat cat f)
    →     let extractFunctor = ./impliedEndofunctor f applicative
      
      in    { ap =
                ./ap f applicative
            , lift2 =
                applicative.op
            , pure =
                applicative.identity
            , extractFunctor =
                extractFunctor
            }
          ∧ ./../Functor/Endo/terms.dhall object cat.arrow f extractFunctor
