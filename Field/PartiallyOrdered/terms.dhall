let kCat =
      ./../../Category/Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let vObject = Type

let object = Type

let cat =
      ./../../Category/Monoidal/Cartesian/extractMonoidal sha256:0fcc63fc837459ca2866d31c5b11400b56fcb8f7d1846b774e98b47995c1879a
      kCat
      vObject
      object
      ./../../Category/Set/monoidal/cartesian sha256:b6efbdc0effbca1bc7427c980f2579012808494a8195fdf9fb52aea37ae91116

let category =
      ./../../Category/Set/category sha256:6f1eaf6697638fb787cbd0d05026ffbfd9ae02c130dbb99f21efeffcbf3b7a6e

let bifunctor =
      ./../../Tuple/functor/pair sha256:df09688fed0657c884f1faee5402efbcfafc50f8076b2245c8cbf587c3b013da

in    λ ( m
        : object
        )
    → λ ( field
        : ./Type sha256:601820c45e01df03e968188ed24ec0e86daea5c1a5b8213268258f8216e448a4
          m
        )
    →   { eq =
            field.additive.eq
        , partialLE =
            field.additive.partialLE
        }
      ∧ ./../terms.dhall sha256:0b90305b0dd275f2767da5ec321488b10a8bf6fa859c355c276e41250f8abb96
        object
        cat
        category
        bifunctor
        m
        ( ./extractField sha256:d102ff052da8d35a9ccc3203d510345c0418a1024d119c67c05a56fa107f7096
          m
          field
        )
