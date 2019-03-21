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
    → λ ( monoid
        : ./Type sha256:a070e866a0c8ab80b910b06a9f007023adaa3ce08b60200bbd7b685752717249
          object
          cat
          m
        )
    →   monoid.{ identity
               }
      ∧ ./../Semigroup/terms.dhall sha256:3811ad264b15ae64be6ba0fdc2dc688ac861e547cc7f27ffb42c37fccd169623
        object
        ( ./../Category/Monoidal/extractSemigroupal sha256:70ef91047fc61f9b95bc9a7c791c6e18d62c8c91d88741f2f72a070b3e820f1f
          kArrow
          kProduct
          object
          cat
        )
        m
        ( ./extractSemigroup sha256:065563aa889bd881cc1f8dbad41cae590741caccdf5681f4162c645f5bae9393
          object
          cat
          m
          monoid
        )
