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
    → λ ( semiring
        : ./Type sha256:c970caa7b60b6e071b3868da13afb842a49b75936719ac48782ec1d711524a0f
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
