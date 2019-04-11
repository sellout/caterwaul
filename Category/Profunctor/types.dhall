let kCat =
      ./../Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let Category =
      ./../Kind sha256:c73426d12cddcdfc44b6e687fc897f7ef91fcda0c4da116a91acdca4d15c68a2
      kCat

let MonoidalCategory =
      ./../Monoidal/Kind sha256:6eb37e632903173c5ec1600564aa614697c4b58719773c4e4c66a76f095d1636
      kCat

let vObject = Type

in    λ ( object
        : Kind
        )
    → λ(v : MonoidalCategory Type vObject)
    → λ(cat : Category vObject object)
    → ./../Semigroupal/types.dhall sha256:c2ad1eea90a1249da92468ab10ef0102073879fa133618158414193835529916
      (kCat.arrow (kCat.product object object) vObject)
      v
      ( ./semigroupal sha256:96b99ef1921dac9ea988b429323cd2695c8ef3167a489decc0783bb37b122005
        object
        v
        cat
      )
