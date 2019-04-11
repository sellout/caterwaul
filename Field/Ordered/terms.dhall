let object = Type

in    λ ( m
        : object
        )
    → λ ( field
        : ./Type sha256:6aaeace90df1f726ff530ea9decd9d086288a32a1db3616515105dc658d78bf0
          m
        )
    →   { le =
            field.additive.le
        }
      ∧ ./../PartiallyOrdered/terms.dhall sha256:9662be3e86e72b7b9c6a60751baa462995a935585396c619f66ee26229c8650d
        m
        ( ./extractPartiallyOrderedField sha256:1f5ce8454a6e3381ec9815ec73bb1b87f3e4beaa58793447ff1f89dc00edcb2f
          m
          field
        )
