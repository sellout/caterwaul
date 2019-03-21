let object = Type

in    λ ( m
        : object
        )
    → λ ( field
        : ./Type sha256:f3079ec7960a588788c7fbad21d87463b7198ec7b6955821419111614b8ddad5
          m
        )
    →   { le =
            field.additive.le
        }
      ∧ ./../PartiallyOrdered/terms.dhall sha256:1a061c7935e7c7049fc63505d66214a87c9e7d91374201aaed85cf26eb420213
        m
        ( ./extractPartiallyOrderedField sha256:c992d72550f2c094797b5a9be555e78c4f0c869f6fd399f39142d1763d214633
          m
          field
        )
