let cat =
      ./../Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let vObject = Type

let Category =
      ./../Kind sha256:c73426d12cddcdfc44b6e687fc897f7ef91fcda0c4da116a91acdca4d15c68a2
      cat

let MonoidalCategory =
      ./../Monoidal/Kind sha256:8e77a076f4c2f6e1d0ad07cfec37dfd04782e1a0a7e98a72a305233f69c494ca
      cat

let base =
      ./../Monoidal/extractCategory sha256:c9807a603a6bd9f0ef13debb0f11e63d6f7133870fef175f27d08dd81c2ff695
      cat

in    λ ( cObject
        : Kind
        )
    → λ(dObject : Kind)
    → λ(v : MonoidalCategory Type vObject)
    → λ(c : Category vObject cObject)
    → λ(d : Category vObject dObject)
    → ./../types.dhall sha256:a033d62a66986b7c6cfdc1909a323c4e56ad63aad60ea1439579176ca9b4c7fe
      (cat.arrow cObject dObject)
      v
      ( ./category sha256:c69163eac75892504c9b6fd8b9637704c20e0baa23c5d428ecfb2b4587414bef
        cObject
        dObject
        (base Type vObject v)
        c
        d
      )
