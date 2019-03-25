let kArrow =
      ./../Function/Kind sha256:0b6372c593badac5fe880699fd1cf19dfba07c62fab935a8bad96915866f466e

let kProduct =
      ./../Tuple/Kind sha256:03e1c52890f0cda1a2181cd3eb045d5344fc7c907fcbf836736c0e3222c5ffd8

let vObject = Type

in    λ ( object
        : Kind
        )
    → λ ( cat
        : ./../Category/Monoidal/Kind sha256:f05d8665b46c686b6b930ad18aad6e1daa8c7a9c104d7bbeec947389d4d83e48
          kArrow
          kProduct
          vObject
          object
        )
    → λ(m : object)
    → λ ( rig
        : ./Type sha256:3baff106e4b8032968b2fe0645306289090cac86c85317ab4281353146780a27
          object
          cat
          m
        )
    →   { zero =
            rig.additive.identity
        }
      ∧ ./../Semiring/terms.dhall sha256:509d1e28929459d199da54d416a2bb9c58df90064cffa8e93cfcb1dadbfc0845
        object
        cat
        m
        ( ./extractSemiring sha256:2674870616f24e27ce745292c09b44d0227f35e888eb12f6c77097d431580650
          object
          cat
          m
          rig
        )
