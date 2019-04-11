let object = Type

in    λ ( m
        : object
        )
    → λ ( field
        : ./Type sha256:c02270f3266abfba75c22182ee2f9e499d764093bed9178afe62c62feea4dc48
          m
        )
    →   { le =
            field.additive.le
        }
      ∧ ./../PartiallyOrdered/terms.dhall sha256:0516aa52b865228956f950fdc7fbf5f78fd4f9b14938a87790af7c15d5e130e2
        m
        ( ./extractPartiallyOrderedField sha256:d744fcc630e4310d196780863d3c17e77ef7be627abc49257be740ef0b9183a7
          m
          field
        )
