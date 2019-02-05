    let object = Type

in  let arrow = ./../Function/Type

in  let Reader = ./Type object arrow

in    λ(r : Type)
    →   { withReader = ./withReader object arrow ./../Function/semigroupoid r }
      ∧ ./../Monad/terms.dhall
        object
        arrow
        ./../Function/semigroupoid
        (λ(b : object) → Reader { _1 = r, _2 = b })
        (./monad r)
