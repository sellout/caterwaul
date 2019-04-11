let object = Type

in    λ ( m
        : object
        )
    → λ ( field
        : ./Type sha256:4ee213242564da484628126b5639755c932eef8cf8afa4b011719e2d4b59b848
          m
        )
    →   { le =
            field.additive.le
        }
      ∧ ./../PartiallyOrdered/terms.dhall sha256:8cb27c45abbc58a5caf4c5e4095625e0d17ee33832894498368bb2497f37790e
        m
        ( ./extractPartiallyOrderedField sha256:c380351df9cc63a2aabe35d6a0b44f032bbfc68375bf1115e7f5507082964422
          m
          field
        )
