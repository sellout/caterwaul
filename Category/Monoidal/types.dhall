let kCat =
      ./../Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let vObject = Type

in    λ ( object
        : Kind
        )
    → λ ( v
        : ./Kind sha256:8e77a076f4c2f6e1d0ad07cfec37dfd04782e1a0a7e98a72a305233f69c494ca
          kCat
          Type
          vObject
        )
    → λ ( cat
        : ./Kind sha256:8e77a076f4c2f6e1d0ad07cfec37dfd04782e1a0a7e98a72a305233f69c494ca
          kCat
          vObject
          object
        )
    → let Set =
            ./Cartesian/extractMonoidal sha256:8112e73d82fd63e4e8bb5628a8cea43f92518a02e56ad351c7f9558546e7f81a
            kCat
            vObject
            Type
            ./../Set/monoidal/cartesian sha256:3a79a17d1c39a3df58efcc62fd96a2da0147bb29b524f57aa7c35942f653f164
      
      in    { CommutativeGroup =
                ./../../Group/Commutative/Type sha256:1c7379742fbce696180cd8e2660a489b7b7d8cbfe81406733459e37ffa961214
                object
                cat
            , CommutativeMonoid =
                ./../../Monoid/Commutative/Type sha256:f834d5fd5b1d9a58809d316e6660f485b2e2d342bf833dcfda8034634e3a8f76
                object
                cat
            , Day =
                ./../../Day/Type sha256:f2b5b6fb9d2fead2e46f0fe8362e08133d5f552c932d9ca03126f256d24b8520
                object
                Set
                cat
            , Field =
                ./../../Field/Type sha256:839042c2c40cdd15c50a5c225907ebcab972da26c36ec2a1ec1a64a6359f6466
                object
                cat
            , Group =
                ./../../Group/Type sha256:1c7379742fbce696180cd8e2660a489b7b7d8cbfe81406733459e37ffa961214
                object
                cat
            , Monoid =
                ./../../Monoid/Type sha256:f834d5fd5b1d9a58809d316e6660f485b2e2d342bf833dcfda8034634e3a8f76
                object
                cat
            , MonoidalFunctor =
                ./../../Functor/Monoidal/Type sha256:bf8111231d2f34c80be8863044f587a617c364172c46684ce6480c5c96764e74
                object
                ( ./extractcategory sha256:c9807a603a6bd9f0ef13debb0f11e63d6f7133870fef175f27d08dd81c2ff695
                  kCat
                  Type
                  vObject
                  v
                )
                cat
                Set
            , Rig =
                ./../../Rig/Type sha256:b2f1a0e4848f04f5571b52a37fc82400f298f021f978fee48375f25590e4af9c
                object
                cat
            , Ring =
                ./../../Ring/Type sha256:d42266a1fcdaa3bc46ba0463630a92354a2aa04281130768ae2d7cdcbe45d482
                object
                cat
            , Semiring =
                ./../../Semiring/Type sha256:901a4a366211f30b023e3903bebf5bf71a3680950035742394cb79c0c4d7d655
                object
                cat
            }
          ∧ ./../Semigroupal/types.dhall sha256:50c585338c288129b91178b0e9992065893a34a43dbe1ceeaa0d7b6af0036df8
            object
            v
            ( ./extractSemigroupal sha256:aae542624e23cbcccf4d3331b84d3ff664b425e0e186fead04853f01637a1e9c
              kCat
              vObject
              object
              cat
            )
