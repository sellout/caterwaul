let object = Type

in    λ(m : object)
    → λ(field : ./Type m)
    →   { compare = field.additive.compare }
      ∧ ./../PartiallyOrdered/terms.dhall
          m
          (./extractPartiallyOrderedField m field)
