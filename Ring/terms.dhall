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
          → λ ( ring
              : ./Type sha256:82080727e85b7171a739ae0f8259f23f5c7df3bc8a1f27ce81c4b1fbccf5126f
                object
                cat
                m
              )
          →   { negate =
                  ring.additive.inverse
              , subtract =
                  ./subtract sha256:0b016e372a3d58455b7c77d31e19689d59bb369fb8a7a2186b6c3014949a173e
                  object
                  cat
                  category
                  bifunctor
                  m
                  ring
              }
            ∧ ./../Rig/terms.dhall sha256:dc7c1da646c0aa2e66f93dd589d73cbb62e2d612acb876072d0de4fc066985a3
              object
              cat
              m
              ( ./extractRig sha256:be802c3d35db6d70d24965592ca990a1d01774be6f7d794622cfe3d9c2ed91aa
                object
                cat
                m
                ring
              )
