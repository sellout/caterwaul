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
          → λ ( field
              : ./Type sha256:839042c2c40cdd15c50a5c225907ebcab972da26c36ec2a1ec1a64a6359f6466
                object
                cat
                m
              )
          →   { divide =
                  ./divide sha256:e2e8ab71b6debc04d678369610017683160c54cb0870db0ff954653adf8861ba
                  object
                  cat
                  category
                  bifunctor
                  m
                  field
              , reciprocal =
                  field.multiplicative.inverse
              }
            ∧ ./../Ring/terms.dhall sha256:7fa7ee6337d1b15b35cb1df77aa6cd0ad0d2052ccc41e665e7bec3135d226edd
              object
              cat
              category
              bifunctor
              m
              ( ./extractRing sha256:6545aecbe3af02c061bc574e98a4185fae53cde596ecbd024f4b45ed6762671f
                object
                cat
                m
                field
              )
