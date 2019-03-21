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
    → λ ( field
        : ./Type sha256:4cbccc76562039dff6963e815d37d2bffc2f1c8cf0735e1c89d9ae373ed39efe
          object
          cat
          m
        )
    →   { divide =
            ./divide sha256:8246fb3a2a528d062203212beb7fa0982dcbbc7af0ff374d7d10ae4138b5dfc4
            object
            cat
            category
            bifunctor
            m
            field
        , reciprocal =
            field.multiplicative.inverse
        }
      ∧ ./../Ring/terms.dhall sha256:26dae0bc458647f7d1aaf43545c7bdaa65a23c7ab96660aa8fa4cafc9e65e432
        object
        cat
        category
        bifunctor
        m
        ( ./extractRing sha256:91b2efbf59680290dcf71beec76d14f14dca9b0f6e670846556ec924c0be1af0
          object
          cat
          m
          field
        )
