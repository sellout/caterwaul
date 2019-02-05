    let object = Type

in  let arrow = ./../Function/Type

in  let Reader = ./Type object arrow

in    λ(r : object)
    →   { withReader = ./withReader object arrow ./../Function/semigroupoid r }
      ∧ ./../Monad/terms.dhall
        object
        arrow
        ./../Function/semigroupoid
        (λ(b : object) → Reader { _1 = r, _2 = b })
        ( ./../Functor/Bifunctor/impliedSecondFunctor
          object
          (./../Category/Op/Type object arrow)
          (./../Category/Op/category object arrow ./../Function/category)
          object
          arrow
          Type
          ./../Function/Type
          Reader
          (./functor/hom object arrow ./../Function/semigroupoid)
          r
        )
        (./monad r)
