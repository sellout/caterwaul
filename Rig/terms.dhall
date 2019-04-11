let kCat =
      ./../Category/Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let vObject = Type

in    λ ( object
        : Kind
        )
    → λ ( cat
        : ./../Category/Monoidal/Kind sha256:8e77a076f4c2f6e1d0ad07cfec37dfd04782e1a0a7e98a72a305233f69c494ca
          kCat
          vObject
          object
        )
    → λ(m : object)
    → λ ( rig
        : ./Type sha256:b2f1a0e4848f04f5571b52a37fc82400f298f021f978fee48375f25590e4af9c
          object
          cat
          m
        )
    →   { zero =
            rig.additive.unit
        }
      ∧ ./../Semiring/terms.dhall sha256:9455c8209766d8998a578767c8722a903526c5ec5096fe5538041403071dceb2
        object
        cat
        m
        ( ./extractSemiring sha256:7248b5b944438e889543ff6510d901f730464161ada651f867566471da8c5876
          object
          cat
          m
          rig
        )
