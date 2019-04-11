let kCat =
      ./../Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let vObject = Type

in    λ ( object
        : Kind
        )
    → λ ( v
        : ./../Monoidal/Kind sha256:8e77a076f4c2f6e1d0ad07cfec37dfd04782e1a0a7e98a72a305233f69c494ca
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
            ./../../Arrow/Type sha256:cadeea2fc253655ecbc484a159bc5f8c4d32f9b26ef7ffe9aabda193c8d5fe0c
            object
            v
            cat
        , Semigroup =
            ./../../Semigroup/Type sha256:c141f4fb3c393804963be5ed72ffe07f5a7e90f588ead9065235240815a80c88
            object
            cat
        }
      ∧ ./../types.dhall sha256:a033d62a66986b7c6cfdc1909a323c4e56ad63aad60ea1439579176ca9b4c7fe
        object
        v
        ( ./extractCategory sha256:e424ab1a06cccec93571da2bc08642157fd9e60030535233320a7e22c02d01b6
          kCat
          vObject
          object
          cat
        )
