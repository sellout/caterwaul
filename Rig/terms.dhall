let kArrow =
      ./../Function/Kind sha256:0b6372c593badac5fe880699fd1cf19dfba07c62fab935a8bad96915866f466e

let kProduct =
      ./../Tuple/Kind sha256:03e1c52890f0cda1a2181cd3eb045d5344fc7c907fcbf836736c0e3222c5ffd8

in    λ ( object
        : Kind
        )
    → λ ( cat
        : ./../Category/Monoidal/Kind sha256:c90d64b23bd9269a630ed0e3c5202fef1969034543a57c20db10215d7092fe22
          kArrow
          kProduct
          object
        )
    → λ(m : object)
    → λ ( rig
        : ./Type sha256:8de0514c79f1515d5fdd0026135a9ee8064b6733c0121d0cd6ced50f27286e97
          object
          cat
          m
        )
    →   { zero =
            rig.additive.identity
        }
      ∧ ./../Semiring/terms.dhall sha256:df998ef0d0389b5f9db6cf8b35ef8d0af94481d1c2b09a120308c326884803fc
        object
        cat
        m
        ( ./extractSemiring sha256:6d67e96b54e7650695af4624ae8af49c2e01bb9ff0845ff2c9e1e46f9e992a8a
          object
          cat
          m
          rig
        )
