let kCat =
      ./../Category/Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let vObject = Type

let v =
      ./../Category/Monoidal/Cartesian/extractMonoidal sha256:25afdf2818357f9c4b9dac6652b82e730472c389a634f8417a6014d39c7cddc0
      kCat
      Type
      vObject
      ./../Category/Set/monoidal/cartesian sha256:48e8bea552638624a62335eab92acd1e0a04c28e8a0d8fe1c8974565065a9576

in    λ ( object
        : Kind
        )
    → λ ( cat
        : ./../Category/Monoidal/Kind sha256:6eb37e632903173c5ec1600564aa614697c4b58719773c4e4c66a76f095d1636
          kCat
          vObject
          object
        )
    → let base =
            ./../Category/Monoidal/extractCategory sha256:936b393338b8dcf60af6c25ecea2b0b02d83e18acfed60ff736754fe0c1d7b3d
            kCat
            vObject
            object
            cat
      
      in    λ ( category
              : ./../Category/Type sha256:5792bd3a482ad0d318aecda464bd952a6561dc1119bdc1f5db574cfc3b66e095
                object
                v
                base
              )
          → λ ( bifunctor
              : ./../Functor/Bifunctor/Type sha256:d8949693dfb049e8d09615a9e1e7037418bc3e654d2eeecfc61e41a99e7daf41
                vObject
                object
                object
                object
                v
                base
                base
                base
                cat.op
              )
          → λ(m : object)
          → λ ( group
              : ./Type sha256:fc01995b27c56e372c0cac6a842f3f7e80095057868f72104d58140e3b5bf908
                object
                cat
                m
              )
          →   { inverse =
                  group.inverse
              , leftQuotient =
                  ./leftQuotient sha256:b53eb8a6d9425135881204b29b9e5b0494d36b85e250f1e781affd527a0bd1cc
                  object
                  cat
                  category
                  bifunctor
                  m
                  group
              , rightQuotient =
                  ./rightQuotient sha256:90d602a30cc7faecbf231c472d3fd1b9559980d13151e39cd6f5d49c440e59f3
                  object
                  cat
                  category
                  bifunctor
                  m
                  group
              }
            ∧ ./../Monoid/terms.dhall sha256:6b5d11e766798070bb13f1e3d950d2dd4a7c12039d3bb767bec090d78a87a412
              object
              cat
              m
              ( ./extractMonoid sha256:49c1580d0e7d8b8f154acb786f7f3011f135300908fbc942137a095e1f66eedf
                object
                cat
                m
                group
              )
