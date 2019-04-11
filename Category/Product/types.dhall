let cat =
      ./../Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let vObject = Type

let Category =
      ./../Kind sha256:c73426d12cddcdfc44b6e687fc897f7ef91fcda0c4da116a91acdca4d15c68a2
      cat

let MonoidalCategory =
      ./../Monoidal/Kind sha256:6eb37e632903173c5ec1600564aa614697c4b58719773c4e4c66a76f095d1636
      cat

in    λ ( cObject
        : Kind
        )
    → λ(dObject : Kind)
    → λ(v : MonoidalCategory Type vObject)
    → λ(c : Category vObject cObject)
    → λ(d : Category vObject dObject)
    → ./../types.dhall sha256:e97633bf915d1cd417dc07321103352ab99dcf3556af52ae4c2b9c98d1e26921
      { _1 : cObject, _2 : dObject }
      v
      ( ./Kind sha256:d43c070361ce6abdc25e14cad00807def1663c3b63ac49b8a78e9e8ccfdb1d1a
        cObject
        dObject
        c
        d
      )
