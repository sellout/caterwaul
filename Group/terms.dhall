let kCat =
      ./../Category/Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let vObject = Type

let v =
      ./../Category/Monoidal/Cartesian/extractMonoidal sha256:0fcc63fc837459ca2866d31c5b11400b56fcb8f7d1846b774e98b47995c1879a
      kCat
      Type
      vObject
      ./../Category/Set/monoidal/cartesian sha256:b6efbdc0effbca1bc7427c980f2579012808494a8195fdf9fb52aea37ae91116

in    λ ( object
        : Kind
        )
    → λ ( cat
        : ./../Category/Monoidal/Kind sha256:96b5eca83adb85b7bc744975b530210da2aec17c9c70b45d3b241ccfdb47e772
          kCat
          vObject
          object
        )
    → let base =
            ./../Category/Monoidal/extractCategory sha256:be63455106b8fe90ee7366a02f05b29c1aa42e63243bb9994d55011052eab6ec
            kCat
            vObject
            object
            cat
      
      in    λ ( category
              : ./../Category/Type sha256:a3968397f7c9a309d7c4eed545517a4e6f451eff463aaaf274fd1c7d37cb3004
                object
                v
                base
              )
          → λ ( bifunctor
              : ./../Functor/Bifunctor/Type sha256:caf45fd32cae3f88e6a8d93c3d81737e6d2abdf1a6ed90efc7b69906b65e7ba0
                vObject
                object
                object
                object
                v
                base
                base
                base
                cat.product
              )
          → λ(m : object)
          → λ ( group
              : ./Type sha256:cac478dd8354b05c1af60acb85d82d4898c35cda2ea44ccf0b7cd61938c80c14
                object
                cat
                m
              )
          →   { inverse =
                  group.inverse
              , leftQuotient =
                  ./leftQuotient sha256:8587dcf77d919258287aa0ffa7ff75c3b69f568b1239297dbf137b23c53c5123
                  object
                  cat
                  category
                  bifunctor
                  m
                  group
              , rightQuotient =
                  ./rightQuotient sha256:8b2417599f141ec3a9d30b0c9dc69654660f21ce4dd2a6a7264945f1daa8a792
                  object
                  cat
                  category
                  bifunctor
                  m
                  group
              }
            ∧ ./../Monoid/terms.dhall sha256:261a2f096dee7d59ba48207843b353ebff52d876935300935f931892274ded9f
              object
              cat
              m
              ( ./extractMonoid sha256:4af2369ebfed14dd040a969eafa09413110ca5d2ee0dafa00ff261e96066d996
                object
                cat
                m
                group
              )
