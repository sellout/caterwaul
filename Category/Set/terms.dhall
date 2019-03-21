{- These are various operations, grouped by type, specialized to **Set**.
-}
let Set =
      ./../../Function/Type sha256:44d58123a7ba6bd4f59a8f0fe8363ca585db3061ae3f369d3a26607a127f7927

in  { either =
        ./../../Either/terms.dhall sha256:c55eec4f0e85594370412d86685910db6668e10469b00e6e162a874268b44ad5
    , functor =
        ./../../Functor/Endo/terms.dhall sha256:b50383e0e224ab60ad1e0cacf0ee3250e337355e788dd39d436750141f477d17
        Type
        Set
    , monad =
        ./../../Monad/terms.dhall sha256:3387bb7197414e9a50c2b3981d948fc9fb62716b8c2a4de23088a779efde6696
        Type
        Set
        ./../../Function/semigroupoid sha256:4827035ecdee301574a57c0dde786653eaf4724f0fb0d175a99128759e973c07
    }
