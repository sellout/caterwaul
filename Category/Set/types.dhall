let cat = ./../Cat/semigroupal

let vObject = Type

in    λ(v : ./../Monoidal/Kind cat Type vObject)
    → let Set =
            ./../Monoidal/Cartesian/extractMonoidal
              cat
              vObject
              Type
              ./monoidal/cartesian
      
      in    { Eq =
                ./../../Eq/Type
            , OrderedField =
                ./../../Field/Ordered/Type
            , OrderedGroup =
                ./../../Group/Ordered/Type
            , OrderedRing =
                ./../../Ring/Ordered/Type
            , PartiallyOrderedField =
                ./../../Field/PartiallyOrdered/Type
            , PartiallyOrderedGroup =
                ./../../Group/PartiallyOrdered/Type
            , PartiallyOrderedRing =
                ./../../Ring/PartiallyOrdered/Type
            }
          ∧ ./../Monoidal/types.dhall Type v Set
