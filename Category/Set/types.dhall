let cat =
      ./../Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let vObject = Type

in    λ ( v
        : ./../Monoidal/Kind sha256:8e77a076f4c2f6e1d0ad07cfec37dfd04782e1a0a7e98a72a305233f69c494ca
          cat
          Type
          vObject
        )
    → let Set =
            ./../Monoidal/Cartesian/extractMonoidal sha256:8112e73d82fd63e4e8bb5628a8cea43f92518a02e56ad351c7f9558546e7f81a
            cat
            vObject
            Type
            ./monoidal/cartesian sha256:3a79a17d1c39a3df58efcc62fd96a2da0147bb29b524f57aa7c35942f653f164
      
      in    { Eq =
                ./../../Eq/Type sha256:16ec0250d1cd6f2d48bb5fe37d46d1db9ef640657c7b247b8d5be1aca30259b1
            , InternalHomFunctor =
                ./../../Functor/InternalHom sha256:7da5339d464a87ee62e529ceefc6f6883e8f306a68faefdd707fb6a9a1c00e2e
                v
            , OrderedField =
                ./../../Field/Ordered/Type sha256:4ee213242564da484628126b5639755c932eef8cf8afa4b011719e2d4b59b848
            , OrderedGroup =
                ./../../Group/Ordered/Type sha256:683f0a6a858fb166094138922df58facef8ead3d26deeefc236b514a37b3ea98
            , OrderedRing =
                ./../../Ring/Ordered/Type sha256:dff016e32cda935c2d5c7b6cf2de0bf7a5a509a48bfde5b401c79ede14f44120
            , PartiallyOrderedField =
                ./../../Field/PartiallyOrdered/Type sha256:b582c0166857eaf6b528764afe6ba90abc905b9f0d57fd4f288f710d7662c5be
            , PartiallyOrderedGroup =
                ./../../Group/PartiallyOrdered/Type sha256:84f92a69fcce9eec85c1f1de8b1e0a4f9a0ff824f73dee6531818f5636be320b
            , PartiallyOrderedRing =
                ./../../Ring/PartiallyOrdered/Type sha256:2819a5a39da54b220650858111e24f6c43d89b06b4074151b27c8679d6f127f2
            }
          ∧ ./../Monoidal/types.dhall sha256:2b3c5b6a3d13a4485c8b57962103a7e3fa58ce2aee41173b7b6c958ef7cee4e3
            Type
            v
            Set
