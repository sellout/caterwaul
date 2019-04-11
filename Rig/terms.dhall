let kCat =
      ./../Category/Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let vObject = Type

in    λ ( object
        : Kind
        )
    → λ ( cat
        : ./../Category/Monoidal/Kind sha256:96b5eca83adb85b7bc744975b530210da2aec17c9c70b45d3b241ccfdb47e772
          kCat
          vObject
          object
        )
    → λ(m : object)
    → λ ( rig
        : ./Type sha256:db5179b63bfe4cfec2face20845757f747a1fbe98c7e8ccdaf86487cfeec17f4
          object
          cat
          m
        )
    →   { zero =
            rig.additive.identity
        }
      ∧ ./../Semiring/terms.dhall sha256:cc3eeca20387af90354a0cc181b9e3b062460ae1da1326295e67e4becbe600da
        object
        cat
        m
        ( ./extractSemiring sha256:4e08fb38756f5e00454f03829ff9f33c663ea53f8ba1803714bcc7585842861a
          object
          cat
          m
          rig
        )
