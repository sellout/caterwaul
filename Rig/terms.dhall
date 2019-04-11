let kCat =
      ./../Category/Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let vObject = Type

in    λ ( object
        : Kind
        )
    → λ ( cat
        : ./../Category/Monoidal/Kind sha256:6eb37e632903173c5ec1600564aa614697c4b58719773c4e4c66a76f095d1636
          kCat
          vObject
          object
        )
    → λ(m : object)
    → λ ( rig
        : ./Type sha256:a9c861fad7547e485d9c2238266baa59221ed1c3f8b2f540a6a8fcabaa7ddd03
          object
          cat
          m
        )
    →   { zero =
            rig.additive.identity
        }
      ∧ ./../Semiring/terms.dhall sha256:520ccfdbc92a333dacfebf02fe0d5ba28767cb4162bfe385ea5d00f782967cc3
        object
        cat
        m
        ( ./extractSemiring sha256:531c9954e3771c958d8c4b9ca23d4ba57e669890a096591fa1798922d9463695
          object
          cat
          m
          rig
        )
