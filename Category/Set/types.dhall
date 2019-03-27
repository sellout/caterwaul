let kArrow =
      ./../../Function/Kind sha256:0b6372c593badac5fe880699fd1cf19dfba07c62fab935a8bad96915866f466e

let kProduct =
      ./../../Tuple/Kind sha256:03e1c52890f0cda1a2181cd3eb045d5344fc7c907fcbf836736c0e3222c5ffd8

let vObject = Type

in    λ ( v
        : ./../../Category/Monoidal/Kind sha256:f05d8665b46c686b6b930ad18aad6e1daa8c7a9c104d7bbeec947389d4d83e48
          kArrow
          kProduct
          Type
          vObject
        )
    → let Set =
            ./rig sha256:7675c3b1f1540c9912bfc697d659ac38b8f3197718e238d83c16a8583cf793e2
      
      in    { Either =
                Set.additive.op
            , Eq =
                ./../../Eq/Type sha256:6084124c32c2894f3ef6aff7f8762769b309face3a6b507b3cd1108d2fa6b179
            , InternalHomFunctor =
                ./../../Functor/InternalHom sha256:bae6984817f1c97ed05ad0beb66a9fffb4a1c98c0a93494e815b75a9f508d6a8
                v
            , OrderedField =
                ./../../Field/Ordered/Type sha256:f3079ec7960a588788c7fbad21d87463b7198ec7b6955821419111614b8ddad5
            , OrderedGroup =
                ./../../Group/Ordered/Type sha256:b6fbc7bc6aaee3da63e7efb2c717e9a204eb903ad0b81c6d972b26625a3f393b
            , OrderedRing =
                ./../../Ring/Ordered/Type sha256:be45eeda0704cd97ec9e48d83c1cd6cfc2d8723014d6b4cd9fedc28765ad2762
            , PartiallyOrderedField =
                ./../../Field/PartiallyOrdered/Type sha256:b15fa73b5506bfaab6c40d363c176ccf478338af0f99682dcc61377af28f3b31
            , PartiallyOrderedGroup =
                ./../../Group/PartiallyOrdered/Type sha256:5917fd022b0a2614b362fc6beac71ec4303c8cf654e38985bda5a5705cc7bd00
            , PartiallyOrderedRing =
                ./../../Ring/PartiallyOrdered/Type sha256:346b20efe579120254fa39b5d93cf2fab5fc690abf811bd8bf0b373fef297f0e
            , Tuple =
                Set.multiplicative.op
            , Unit =
                Set.multiplicative.identity
            , Void =
                Set.additive.identity
            }
          ∧ ./../Monoidal/types.dhall sha256:24b39f8c71f7f30b1e4796d99b6cd8950a83df9e0b2c7ab7963d0b07cb2d3adb
            Type
            v
            ./monoidal/cartesian sha256:b017581ee66eec1995d52c80d527598dd5614254bf7217768c035c3a5e2103bd
