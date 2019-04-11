let kCat =
      ./../Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let MonoidalCategory =
      ./../Monoidal/Kind sha256:6eb37e632903173c5ec1600564aa614697c4b58719773c4e4c66a76f095d1636
      kCat

let vObject = Type

in    λ ( object
        : Kind
        )
    → λ(v : MonoidalCategory Type vObject)
    → λ(cat : MonoidalCategory vObject object)
    → ./../Monoidal/types.dhall sha256:ca1e0c6da2b24692da9baefbf46acee3120f8fd43c8b6e31709ab89199ee8a60
      object
      v
      ( ./monoidal sha256:2e9ba15d160c923c4ffc0d152ebc72a6d1a760ca82d1a22d5939b166fbc2fdca
        vObject
        object
        cat
      )
