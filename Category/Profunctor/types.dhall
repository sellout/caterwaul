let kCat =
      ./../Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let Category =
      ./../Kind sha256:c73426d12cddcdfc44b6e687fc897f7ef91fcda0c4da116a91acdca4d15c68a2
      kCat

let MonoidalCategory =
      ./../Monoidal/Kind sha256:96b5eca83adb85b7bc744975b530210da2aec17c9c70b45d3b241ccfdb47e772
      kCat

let vObject = Type

in    λ ( object
        : Kind
        )
    → λ(v : MonoidalCategory Type vObject)
    → λ(cat : Category vObject object)
    → ./../Semigroupal/types.dhall sha256:c6c794d2687e17e6a7baecf869512fb5a4bdaa7c591a77f313a4f38bdecf2cb2
      (kCat.arrow (kCat.product object object) vObject)
      v
      ( ./semigroupal sha256:d5815c7bb2a27b70391bab244ececa40c93e5deed7186662ee4e9c96d8fcf578
        object
        v
        cat
      )
