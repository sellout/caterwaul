let kCat =
      ./../Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let Category =
      ./../Kind sha256:c73426d12cddcdfc44b6e687fc897f7ef91fcda0c4da116a91acdca4d15c68a2
      kCat

let MonoidalCategory =
      ./../Monoidal/Kind sha256:8e77a076f4c2f6e1d0ad07cfec37dfd04782e1a0a7e98a72a305233f69c494ca
      kCat

let vObject = Type

in    λ ( object
        : Kind
        )
    → λ(v : MonoidalCategory Type vObject)
    → λ(cat : Category vObject object)
    → ./../Semigroupal/types.dhall sha256:50c585338c288129b91178b0e9992065893a34a43dbe1ceeaa0d7b6af0036df8
      (kCat.arrow (kCat.product object object) vObject)
      v
      ( ./semigroupal sha256:c81fb247341878786996c103f9495e5ec38b37adbb945ebe3fea7f3481dd2263
        object
        v
        cat
      )
