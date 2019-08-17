let kCat = ./../Cat/semigroupal

let vObject = Type

in    λ(object : Kind)
    → λ(v : ./Kind kCat Type vObject)
    → λ(cat : ./Kind kCat vObject object)
    → let Set =
            ./Cartesian/extractMonoidal
              kCat
              vObject
              Type
              ./../Set/monoidal/cartesian
      
      let vBase = ./extractcategory kCat Type vObject v
      
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
                ./../../Functor/Monoidal/Type object vBase cat Set
            , Rig =
                ./../../Rig/Type object cat
            , Ring =
                ./../../Ring/Type object cat
            , Semiring =
                ./../../Semiring/Type object cat
            , StrongFunctor =
                ./../../Functor/Strong/Type object vBase cat
            }
          ∧ ./../Semigroupal/types.dhall
              object
              v
              (./extractSemigroupal kCat vObject object cat)
