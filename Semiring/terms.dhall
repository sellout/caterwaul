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
    → λ ( semiring
        : ./Type sha256:8ef0a1efff6a14a542202cb12fcd94f8c9ddda235e2ce2133fc1da5efcb184be
          object
          cat
          m
        )
    → { add =
          semiring.additive.op
      , multiply =
          semiring.multiplicative.op
      , one =
          semiring.multiplicative.identity
      }
