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
          → λ ( group
              : ./Type sha256:1c7379742fbce696180cd8e2660a489b7b7d8cbfe81406733459e37ffa961214
                object
                cat
                m
              )
          →   { inverse =
                  group.inverse
              , leftQuotient =
                  ./leftQuotient sha256:053d0855ddf07cf7a72c4fa7275bb57083f353e6114ef6d87e29770b7f1aadca
                  object
                  cat
                  category
                  bifunctor
                  m
                  group
              , rightQuotient =
                  ./rightQuotient sha256:cd200a0c4f86168c32bdfc4474a71f07720697334fde96a0f93c130389f20e27
                  object
                  cat
                  category
                  bifunctor
                  m
                  group
              }
            ∧ ./../Monoid/terms.dhall sha256:1005b4b43c0f54772270e69b40bf62a0c1bbde63428c1a136b3ec540f22c597f
              object
              cat
              m
              ( ./extractMonoid sha256:87ba7a505f82db6ae28745477cfd9bf713a4a645757e1b20cfc1ac63449841b8
                object
                cat
                m
                group
              )
