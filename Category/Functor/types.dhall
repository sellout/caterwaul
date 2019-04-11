let cat =
      ./../Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let vObject = Type

let Category =
      ./../Kind sha256:c73426d12cddcdfc44b6e687fc897f7ef91fcda0c4da116a91acdca4d15c68a2
      cat

let MonoidalCategory =
      ./../Monoidal/Kind sha256:6eb37e632903173c5ec1600564aa614697c4b58719773c4e4c66a76f095d1636
      cat

let base =
      ./../Monoidal/extractCategory sha256:936b393338b8dcf60af6c25ecea2b0b02d83e18acfed60ff736754fe0c1d7b3d
      cat

in    λ ( cObject
        : Kind
        )
    → λ(dObject : Kind)
    → λ(v : MonoidalCategory Type vObject)
    → λ(c : Category vObject cObject)
    → λ(d : Category vObject dObject)
    → ./../types.dhall sha256:e97633bf915d1cd417dc07321103352ab99dcf3556af52ae4c2b9c98d1e26921
      (cat.arrow cObject dObject)
      v
      ( ./category sha256:c69163eac75892504c9b6fd8b9637704c20e0baa23c5d428ecfb2b4587414bef
        cObject
        dObject
        (base Type vObject v)
        c
        d
      )
