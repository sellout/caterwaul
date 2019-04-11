let kCat =
      ./../Category/Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let vObject = Type

in    λ ( object
        : Kind
        )
    → λ ( cat
        : ./../Category/Monoidal/Kind sha256:8e77a076f4c2f6e1d0ad07cfec37dfd04782e1a0a7e98a72a305233f69c494ca
          kCat
          vObject
          object
        )
    → λ(m : object)
    → λ ( semiring
        : ./Type sha256:901a4a366211f30b023e3903bebf5bf71a3680950035742394cb79c0c4d7d655
          object
          cat
          m
        )
    → { add =
          semiring.additive.product
      , multiply =
          semiring.multiplicative.product
      , one =
          semiring.multiplicative.unit
      }
