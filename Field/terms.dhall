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
          → λ ( field
              : ./Type sha256:8c807118f5787225c16876c89470140c694e961d2d31575b65c4ac6f2de985a4
                object
                cat
                m
              )
          →   { divide =
                  ./divide sha256:85812798c64a3b587c96a72ce52230862dde90a4790842a9a081e0b54ba2ea51
                  object
                  cat
                  category
                  bifunctor
                  m
                  field
              , reciprocal =
                  field.multiplicative.inverse
              }
            ∧ ./../Ring/terms.dhall sha256:273a1461d814f66b337fa8741e39e184e5e818834a43a5d63e4850501e21cc90
              object
              cat
              category
              bifunctor
              m
              ( ./extractRing sha256:c150e0e75a82686367dff30bc77780f394bc1e53961a8d5f1f6fe446815a23a4
                object
                cat
                m
                field
              )
