let kCat =
      ./../Category/Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let vObject = Type

let v =
      ./../Category/Monoidal/Cartesian/extractMonoidal sha256:8112e73d82fd63e4e8bb5628a8cea43f92518a02e56ad351c7f9558546e7f81a
      kCat
      Type
      vObject
      ./../Category/Set/monoidal/cartesian sha256:3a79a17d1c39a3df58efcc62fd96a2da0147bb29b524f57aa7c35942f653f164

in    λ ( object
        : Kind
        )
    → λ ( cat
        : ./../Category/Monoidal/Kind sha256:8e77a076f4c2f6e1d0ad07cfec37dfd04782e1a0a7e98a72a305233f69c494ca
          kCat
          vObject
          object
        )
    → let base =
            ./../Category/Monoidal/extractCategory sha256:c9807a603a6bd9f0ef13debb0f11e63d6f7133870fef175f27d08dd81c2ff695
            kCat
            vObject
            object
            cat
      
      in    λ ( category
              : ./../Category/Type sha256:3983e08568dd06043567236a0b0ceb489d34346ea7cc29bd9c4d98bd567e03b9
                object
                v
                base
              )
          → λ ( bifunctor
              : ./../Functor/Bifunctor/Type sha256:5d415a75b8765b342fa599191990337e1a14767512f5714217a95b7adeac171c
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
              : ./Type sha256:d42266a1fcdaa3bc46ba0463630a92354a2aa04281130768ae2d7cdcbe45d482
                object
                cat
                m
              )
          →   { negate =
                  ring.additive.inverse
              , subtract =
                  ./subtract sha256:53e3a08e23974068239f2ef81921d64a51b7b7631822addf3846ad335602d8e7
                  object
                  cat
                  category
                  bifunctor
                  m
                  ring
              }
            ∧ ./../Rig/terms.dhall sha256:5b45d60a702b27ac0363566049ed88603f0abcc28ca84da0c855a0b5ee68c70a
              object
              cat
              m
              ( ./extractRig sha256:dfdd2afa30a76ff7ab4feaea3b1dc15f6245c195e4df3514abdaf2ccb35cf9a5
                object
                cat
                m
                ring
              )
