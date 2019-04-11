let kCat =
      ./../Category/Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let vObject = Type

in    λ ( object
        : Kind
        )
    → λ ( cat
        : ./../Category/Monoidal/Kind sha256:96b5eca83adb85b7bc744975b530210da2aec17c9c70b45d3b241ccfdb47e772
          kCat
          vObject
          object
        )
    → λ(m : object)
    → λ ( semiring
        : ./Type sha256:ec7047a55d67ea9aa8ca67b6dc6c3a7735dc62d714a90d50cedc199af6e56d73
          object
          cat
          m
        )
    → { add =
          semiring.additive.product
      , multiply =
          semiring.multiplicative.product
      , one =
          semiring.multiplicative.identity
      }
