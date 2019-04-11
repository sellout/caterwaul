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
          → λ ( field
              : ./Type sha256:6ef655309a937164f95bda55fe839a7329b4629b1d2042213a01f103e413ff43
                object
                cat
                m
              )
          →   { divide =
                  ./divide sha256:3c207876398d02b195cc13f97c587ab041b9d85d0b49cdd026013a3b1ab7baf8
                  object
                  cat
                  category
                  bifunctor
                  m
                  field
              , reciprocal =
                  field.multiplicative.inverse
              }
            ∧ ./../Ring/terms.dhall sha256:74ddd461df7e486bf8f9d94e5619d54528b0fb2c7ab9a20ab2eb393faff23594
              object
              cat
              category
              bifunctor
              m
              ( ./extractRing sha256:67fa8191537dbbe8bef91fa8a4c19b4e39c03a07f3e589bf60a60bbbfe544ee3
                object
                cat
                m
                field
              )
