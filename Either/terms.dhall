let Either = ./Type

in  { traverse =
        ./functor/pair
    , pair =
        ./functor/pair
        (./../Identity/Type Type)
        (./../Identity/functor/endo Type ./../Function/Type)
    , a =
          λ(a : Type)
        → ./../Monad/terms.dhall
          Type
          ./../Function/Type
          ./../Function/semigroupoid
          (λ(b : Type) → Either { _1 = a, _2 = b })
          ( ./functor/endo/star
            (./../Identity/Type Type)
            ./../Identity/functor/monoidal
            a
          )
          (./monad a)
    , ab =
          λ(a : Type)
        → λ(b : Type)
        → let E = Either { _1 = a, _2 = b }
          
          in  { Left = E.Left, Right = E.Right }
    }
