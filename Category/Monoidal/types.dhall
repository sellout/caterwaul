let kArrow = ./../../Function/Kind

let kProduct = ./../../Tuple/Kind

let vObject = Type

in    λ(object : Kind)
    → λ(v : ./Kind kArrow kProduct Type vObject)
    → λ(cat : ./Kind kArrow kProduct vObject object)
    → let Set = ./../Set/monoidal/cartesian
      
      in    { CommutativeGroup =
                ./../../Group/Commutative/Type object cat
            , CommutativeMonoid =
                ./../../Monoid/Commutative/Type object cat
            , Day =
                ./../../Day/Type object Set cat
            , Field =
                ./../../Field/Type object cat
            , Group =
                ./../../Group/Type object cat
            , Monoid =
                ./../../Monoid/Type object cat
            , MonoidalFunctor =
                ./../../Functor/Monoidal/Type
                object
                (./extractcategory kArrow kProduct Type vObject v)
                cat
                Set
            , Rig =
                ./../../Rig/Type object cat
            , Ring =
                ./../../Ring/Type object cat
            , Semiring =
                ./../../Semiring/Type object cat
            }
          ∧ ./../Semigroupal/types.dhall
            object
            v
            (./extractSemigroupal kArrow kProduct vObject object cat)
