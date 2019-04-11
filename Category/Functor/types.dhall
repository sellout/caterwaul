let cat =
      ./../Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let vObject = Type

let Category =
      ./../Kind sha256:c73426d12cddcdfc44b6e687fc897f7ef91fcda0c4da116a91acdca4d15c68a2
      cat

let MonoidalCategory =
      ./../Monoidal/Kind sha256:96b5eca83adb85b7bc744975b530210da2aec17c9c70b45d3b241ccfdb47e772
      cat

let base =
      ./../Monoidal/extractCategory sha256:be63455106b8fe90ee7366a02f05b29c1aa42e63243bb9994d55011052eab6ec
      cat

in    λ ( cObject
        : Kind
        )
    → λ(dObject : Kind)
    → λ(v : MonoidalCategory Type vObject)
    → λ(c : Category vObject cObject)
    → λ(d : Category vObject dObject)
    → ./../types.dhall sha256:5287842c5c29b3aa5fb475aaccca0f2c411c4d0de9221baa8536c47f819d50b3
      (cat.arrow cObject dObject)
      v
      ( ./category sha256:c69163eac75892504c9b6fd8b9637704c20e0baa23c5d428ecfb2b4587414bef
        cObject
        dObject
        (base Type vObject v)
        c
        d
      )
