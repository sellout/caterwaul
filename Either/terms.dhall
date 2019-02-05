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
          (./monad a)
    , ab =
          λ(a : Type)
        → λ(b : Type)
        →     let E = Either { _1 = a, _2 = b }
          
          in  { Left =
                  E.Left
              , Right =
                  E.Right
              , fromLeft =
                    λ(def : a)
                  → λ(e : Either { _1 = a, _2 = b })
                  → ./fromLeft a b def e
              , fromRight =
                    λ(def : b)
                  → λ(e : Either { _1 = a, _2 = b })
                  → ./fromRight a b def e
              , isLeft =
                  λ(e : Either { _1 = a, _2 = b }) → ./isLeft a b e
              , isRight =
                  λ(e : Either { _1 = a, _2 = b }) → ./isRight a b e
              , lefts =
                    λ(eithers : List (Either { _1 = a, _2 = b }))
                  → ./lefts a b eithers
              , partition =
                    λ(eithers : List (Either { _1 = a, _2 = b }))
                  → ./partition a b eithers
              , rights =
                    λ(eithers : List (Either { _1 = a, _2 = b }))
                  → ./rights a b eithers
              }
    }
