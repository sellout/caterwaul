let kCat = ./Cat/semigroupal

let vObject = Type

in    λ(object : Kind)
    → λ(v : ./Monoidal/Kind kCat Type vObject)
    → λ(cat : ./Kind kCat vObject object)
    → let vBase = ./Monoidal/extractCategory kCat Type vObject v
      
      let Endofunctor = ./../Functor/Endo/Type vObject
      
      in  { Adjunction =
              ./../Adjunction/Type object object vBase cat cat
          , Bifunctor =
              ./../Functor/Bifunctor/Type
                vObject
                object
                object
                object
                v
                cat
                cat
                cat
          , Category =
              ./Type object
          , Codensity =
              ./../Codensity/Type object
          , Comonad =
              ./../Comonad/Type object cat
          , Compose =
              ./../Compose/Type object object object
          , ConstantFunctor =
              ./../Functor/Constant/Type object object
          , Costar =
              ./../Costar/Type vObject object cat
          , Coyoneda =
              ./../Coyoneda/Type object cat
          , Density =
              ./../Density/Type object
          , Endofunctor =
              Endofunctor object vBase cat
          , Identity =
              ./../Identity/Type object
          , Lan =
              ./../Lan/Type object object cat
          , Leibniz =
              ./../Leibniz/Kind object object cat cat
          , Monad =
              ./../Monad/Type object cat
          , NaturalTransformation =
              ./../NaturalTransformation/Type object object cat
          , Profunctor =
              ./../Functor/Profunctor/Type object object v cat cat
          , Ran =
              ./../Ran/Type object object cat
          , Semigroupoid =
              ./../Semigroupoid/Type object
          , Star =
              ./../Star/Type vObject object cat
          , Traversable =
                λ(m : kCat.arrow object object)
              → Endofunctor
                  object
                  vBase
                  (./Kleisli/category vObject object cat m)
          , Yoneda =
              ./../Yoneda/Type object cat
          }
