let kCat =
      ./../Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let MonoidalCategory =
      ./../Monoidal/Kind sha256:96b5eca83adb85b7bc744975b530210da2aec17c9c70b45d3b241ccfdb47e772
      kCat

let vObject = Type

in    λ ( object
        : Kind
        )
    → λ(v : MonoidalCategory Type vObject)
    → λ(cat : MonoidalCategory vObject object)
    → ./../Monoidal/types.dhall sha256:4653eedf08a61b1daf2be9e508a3ce3e9a546fb41ec0c69c62b855355463082d
      object
      v
      ( ./monoidal sha256:64aa4d3715e94ce086e27194aaa8214e6645647b82fbb8907038b243387c3586
        vObject
        object
        cat
      )
