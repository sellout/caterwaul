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
    → λ ( category
        : ./../Category/Type sha256:56874495587bd8bf58b702382562e4aed91603b64a2d6893413c72d5bf265596
          object
          cat.arrow
        )
    → λ ( bifunctor
        : ./../Functor/Bifunctor/Type sha256:941c217fa6ee86da9597e1a86270a67bb1c9d62fe62f6d786fe6454a05fd72fa
          object
          object
          object
          cat.arrow
          cat.arrow
          cat.arrow
          cat.op
        )
    → λ(m : object)
    → λ ( ring
        : ./Type sha256:ccfe4e84b3cb4751a759f879ccfc4bf3aba84ccf734b631c6094fc8c2ce7ae3e
          object
          cat
          m
        )
    →   { negate =
            ring.additive.inverse
        , subtract =
            ./subtract sha256:f322d8e499c27198f290967c56d5d3460ca33758429e3c58038c47291a6e2eae
            object
            cat
            category
            bifunctor
            m
            ring
        }
      ∧ ./../Rig/terms.dhall sha256:27fdf3c10b6c9d8955f3ab58eb32b61ac7357853245914587e60e0202ffd0043
        object
        cat
        m
        ( ./extractRig sha256:e69584391d19e2da3c4d98fdae5a96b46844f28fa39fe3f1da850d1c477592aa
          object
          cat
          m
          ring
        )
