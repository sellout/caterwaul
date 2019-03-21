let Either =
      ./Type sha256:9ac62b105c684db0a562407c0132176c20e93cb29e9434f9b600ed5806cd9fc0

in  { traverse =
        ./functor/pair sha256:41dc12e9784aaef6e736dd9726bbfa372f7876eda6edb6309e45290722c57412
    , pair =
        ./functor/pair sha256:41dc12e9784aaef6e736dd9726bbfa372f7876eda6edb6309e45290722c57412
        ( ./../Identity/Type sha256:0f2ca3c3cd4682978197536d6365c4002a9b95ebbe882e8562879ee16736c3ae
          Type
        )
        ( ./../Identity/functor/endo sha256:564834f3bdf37bba2dae2ffa0dd3fe7036a9152fdc099919bcfbb1a7b39e2348
          Type
          ./../Function/Type sha256:44d58123a7ba6bd4f59a8f0fe8363ca585db3061ae3f369d3a26607a127f7927
        )
    , a =
          λ ( a
            : Type
            )
        → ./../Monad/terms.dhall sha256:3387bb7197414e9a50c2b3981d948fc9fb62716b8c2a4de23088a779efde6696
          Type
          ./../Function/Type sha256:44d58123a7ba6bd4f59a8f0fe8363ca585db3061ae3f369d3a26607a127f7927
          ./../Function/semigroupoid sha256:4827035ecdee301574a57c0dde786653eaf4724f0fb0d175a99128759e973c07
          (λ(b : Type) → Either { _1 = a, _2 = b })
          ( ./functor/endo/star sha256:32aede32d0a6106fa9381778d63f4997b3f32d517f862aa0f299726bc7cbdf3a
            ( ./../Identity/Type sha256:0f2ca3c3cd4682978197536d6365c4002a9b95ebbe882e8562879ee16736c3ae
              Type
            )
            ./../Identity/functor/monoidal sha256:2c113f02d3d833842925e85ffe0c50629d939f6a53bd453ab9127c714204ef26
            a
          )
          ( ./monad sha256:231e3a3fad214569a7ceca9f58a74162492ae3043e1dd65abb22a83935b7eca9
            a
          )
    , ab =
          λ(a : Type)
        → λ(b : Type)
        → let E = Either { _1 = a, _2 = b }
          
          in  { Left = E.Left, Right = E.Right }
    }
