let kCat =
      ./../Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let vObject = Type

in    λ ( object
        : Kind
        )
    → λ ( v
        : ./Kind sha256:96b5eca83adb85b7bc744975b530210da2aec17c9c70b45d3b241ccfdb47e772
          kCat
          Type
          vObject
        )
    → λ ( cat
        : ./Kind sha256:96b5eca83adb85b7bc744975b530210da2aec17c9c70b45d3b241ccfdb47e772
          kCat
          vObject
          object
        )
    → let Set =
            ./Cartesian/extractMonoidal sha256:0fcc63fc837459ca2866d31c5b11400b56fcb8f7d1846b774e98b47995c1879a
            kCat
            vObject
            Type
            ./../Set/monoidal/cartesian sha256:b6efbdc0effbca1bc7427c980f2579012808494a8195fdf9fb52aea37ae91116
      
      in    { CommutativeGroup =
                ./../../Group/Commutative/Type sha256:cac478dd8354b05c1af60acb85d82d4898c35cda2ea44ccf0b7cd61938c80c14
                object
                cat
            , CommutativeMonoid =
                ./../../Monoid/Commutative/Type sha256:de30a2de2ca32bea0db95476b658e4220a53b26134becbe2e3b8a3d8e7ee1fa5
                object
                cat
            , Day =
                ./../../Day/Type sha256:ba33d670ee62e655ba9a4e6345ce1dca028a782f36a37bb8e0fcd3ae3881f9c7
                object
                Set
                cat
            , Field =
                ./../../Field/Type sha256:8c807118f5787225c16876c89470140c694e961d2d31575b65c4ac6f2de985a4
                object
                cat
            , Group =
                ./../../Group/Type sha256:cac478dd8354b05c1af60acb85d82d4898c35cda2ea44ccf0b7cd61938c80c14
                object
                cat
            , Monoid =
                ./../../Monoid/Type sha256:de30a2de2ca32bea0db95476b658e4220a53b26134becbe2e3b8a3d8e7ee1fa5
                object
                cat
            , MonoidalFunctor =
                ./../../Functor/Monoidal/Type sha256:73d6a61a626107cf8fc9ee73e02b3116a2540bae6fa38881165eab9d8c0f8913
                object
                ( ./extractcategory sha256:be63455106b8fe90ee7366a02f05b29c1aa42e63243bb9994d55011052eab6ec
                  kCat
                  Type
                  vObject
                  v
                )
                cat
                Set
            , Rig =
                ./../../Rig/Type sha256:db5179b63bfe4cfec2face20845757f747a1fbe98c7e8ccdaf86487cfeec17f4
                object
                cat
            , Ring =
                ./../../Ring/Type sha256:82080727e85b7171a739ae0f8259f23f5c7df3bc8a1f27ce81c4b1fbccf5126f
                object
                cat
            , Semiring =
                ./../../Semiring/Type sha256:ec7047a55d67ea9aa8ca67b6dc6c3a7735dc62d714a90d50cedc199af6e56d73
                object
                cat
            }
          ∧ ./../Semigroupal/types.dhall sha256:c6c794d2687e17e6a7baecf869512fb5a4bdaa7c591a77f313a4f38bdecf2cb2
            object
            v
            ( ./extractSemigroupal sha256:a5bbf4cdc598ec13d870022473eb80feeee8f9b2b10528f5df7f48edccb2c751
              kCat
              vObject
              object
              cat
            )
