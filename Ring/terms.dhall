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
          → λ ( ring
              : ./Type sha256:c568c4291c16cccc5a32f16d7962dbcf9b6ef7b5c9aaf67a6086946ad21ee64a
                object
                cat
                m
              )
          →   { negate =
                  ring.additive.inverse
              , subtract =
                  ./subtract sha256:438c80b10ab9adf086e399ec28da3a34c5991ce83a540277368b9001607f6957
                  object
                  cat
                  category
                  bifunctor
                  m
                  ring
              }
            ∧ ./../Rig/terms.dhall sha256:452ddd574cf0f9f2835b579da9debb1824b8ec8bbd6460f7dea48bbf51c9b657
              object
              cat
              m
              ( ./extractRig sha256:1d70057426489ae05f44efbec5a7566548747673cb9672d0fb4962009b6484bd
                object
                cat
                m
                ring
              )
