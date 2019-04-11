let kCat =
      ./../Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let vObject = Type

in    λ ( object
        : Kind
        )
    → λ ( v
        : ./Kind sha256:6eb37e632903173c5ec1600564aa614697c4b58719773c4e4c66a76f095d1636
          kCat
          Type
          vObject
        )
    → λ ( cat
        : ./Kind sha256:6eb37e632903173c5ec1600564aa614697c4b58719773c4e4c66a76f095d1636
          kCat
          vObject
          object
        )
    → let Set =
            ./Cartesian/extractMonoidal sha256:25afdf2818357f9c4b9dac6652b82e730472c389a634f8417a6014d39c7cddc0
            kCat
            vObject
            Type
            ./../Set/monoidal/cartesian sha256:48e8bea552638624a62335eab92acd1e0a04c28e8a0d8fe1c8974565065a9576
      
      in    { CommutativeGroup =
                ./../../Group/Commutative/Type sha256:fc01995b27c56e372c0cac6a842f3f7e80095057868f72104d58140e3b5bf908
                object
                cat
            , CommutativeMonoid =
                ./../../Monoid/Commutative/Type sha256:7ec2cac4a8bda85f6010a0a00ab0da221bcc0ea295863c1c6259c5aa14878500
                object
                cat
            , Day =
                ./../../Day/Type sha256:75bb9592fce61b6be1565b8b7589763f51b71a9dab310fd5b9c72dbce176a67f
                object
                Set
                cat
            , Field =
                ./../../Field/Type sha256:6ef655309a937164f95bda55fe839a7329b4629b1d2042213a01f103e413ff43
                object
                cat
            , Group =
                ./../../Group/Type sha256:fc01995b27c56e372c0cac6a842f3f7e80095057868f72104d58140e3b5bf908
                object
                cat
            , Monoid =
                ./../../Monoid/Type sha256:7ec2cac4a8bda85f6010a0a00ab0da221bcc0ea295863c1c6259c5aa14878500
                object
                cat
            , MonoidalFunctor =
                ./../../Functor/Monoidal/Type sha256:7d4a68165b33b76bf9e8d8ab6fc8739699a1260549ebee624e57d8cab06f97c0
                object
                ( ./extractcategory sha256:936b393338b8dcf60af6c25ecea2b0b02d83e18acfed60ff736754fe0c1d7b3d
                  kCat
                  Type
                  vObject
                  v
                )
                cat
                Set
            , Rig =
                ./../../Rig/Type sha256:a9c861fad7547e485d9c2238266baa59221ed1c3f8b2f540a6a8fcabaa7ddd03
                object
                cat
            , Ring =
                ./../../Ring/Type sha256:c568c4291c16cccc5a32f16d7962dbcf9b6ef7b5c9aaf67a6086946ad21ee64a
                object
                cat
            , Semiring =
                ./../../Semiring/Type sha256:596494c7f410b819e5b60a9246dee8dbd9d24cb8603477c81830a34809c45a91
                object
                cat
            }
          ∧ ./../Semigroupal/types.dhall sha256:c2ad1eea90a1249da92468ab10ef0102073879fa133618158414193835529916
            object
            v
            ( ./extractSemigroupal sha256:8fc720d6416e099e6943afa14eefa7bb86489af66eea29c4d5c9e11eab9c6808
              kCat
              vObject
              object
              cat
            )
