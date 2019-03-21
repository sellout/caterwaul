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
    → λ ( group
        : ./Type sha256:85e3cfd09df263fe9c3f4c4b97633f9613d96c42075c18416eb6da89f0945b47
          object
          cat
          m
        )
    →   { inverse =
            group.inverse
        , leftQuotient =
            ./leftQuotient sha256:202a154d6953dbe0477b18f6fd40a2cec86801befc7cc40f2e25c6bdc67db26c
            object
            cat
            category
            bifunctor
            m
            group
        , rightQuotient =
            ./rightQuotient sha256:def4ab713ab3d255db4780c3d2271aa88e3ce568faf506ac9f4d107071016ee6
            object
            cat
            category
            bifunctor
            m
            group
        }
      ∧ ./../Monoid/terms.dhall sha256:f3536e64772d3f3d36b162dc818bedb6df1f556965f505b7fe65aab6b24e2c51
        object
        cat
        m
        ( ./extractMonoid sha256:74e4bb6c1a304d5f478265607c67ca60f2bf844a1eee2cc7ade91ca2029d53b4
          object
          cat
          m
          group
        )
