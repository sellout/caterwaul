let kArrow = ./../../Function/Kind

let kProduct = ./../../Tuple/Kind

let vObject = Type

in    λ(v : ./../../Category/Monoidal/Kind kArrow kProduct Type vObject)
    → let Set = ./rig
      
      in    { Either =
                Set.additive.op
            , Eq =
                ./../../Eq/Type
            , InternalHomFunctor =
                ./../../Functor/InternalHom v
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
            , Tuple =
                Set.multiplicative.op
            , Unit =
                Set.multiplicative.identity
            , Void =
                Set.additive.identity
            }
          ∧ ./../Monoidal/types.dhall Type v ./monoidal/cartesian
