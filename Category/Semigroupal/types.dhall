let kCat =
      ./../Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let vObject = Type

in    λ ( object
        : Kind
        )
    → λ ( v
        : ./../Monoidal/Kind sha256:96b5eca83adb85b7bc744975b530210da2aec17c9c70b45d3b241ccfdb47e772
          kCat
          Type
          vObject
        )
    → λ ( cat
        : ./Kind sha256:5d216a5d95721e6086fab2cd85f039d15a9d06b8a986ef170823a57a0c0d02d6
          kCat
          vObject
          object
        )
    →   { Arrow =
            ./../../Arrow/Type sha256:e2050044f4f51e126b329c08e88ad827636c005cf4111d5847558d19c0512759
            object
            v
            cat
        , Semigroup =
            ./../../Semigroup/Type sha256:c141f4fb3c393804963be5ed72ffe07f5a7e90f588ead9065235240815a80c88
            object
            cat
        }
      ∧ ./../types.dhall sha256:5287842c5c29b3aa5fb475aaccca0f2c411c4d0de9221baa8536c47f819d50b3
        object
        v
        ( ./extractCategory sha256:e424ab1a06cccec93571da2bc08642157fd9e60030535233320a7e22c02d01b6
          kCat
          vObject
          object
          cat
        )
