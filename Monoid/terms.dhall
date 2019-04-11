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
    → λ ( monoid
        : ./Type sha256:de30a2de2ca32bea0db95476b658e4220a53b26134becbe2e3b8a3d8e7ee1fa5
          object
          cat
          m
        )
    →   monoid.{ identity
               }
      ∧ ./../Semigroup/terms.dhall sha256:fc6f0974b29845c00a39f78ec6f724af21c4f015fff8d7151e9ebc486c24f831
        object
        ( ./../Category/Monoidal/extractSemigroupal sha256:a5bbf4cdc598ec13d870022473eb80feeee8f9b2b10528f5df7f48edccb2c751
          kCat
          vObject
          object
          cat
        )
        m
        ( ./extractSemigroup sha256:473fba2a269e006256d7fbba84fd802226e0364a09356ff7d70d6ca3a84f6522
          object
          cat
          m
          monoid
        )
