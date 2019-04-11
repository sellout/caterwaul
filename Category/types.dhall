let kCat =
      ./Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let vObject = Type

in    λ ( object
        : Kind
        )
    → λ ( v
        : ./Monoidal/Kind sha256:6eb37e632903173c5ec1600564aa614697c4b58719773c4e4c66a76f095d1636
          kCat
          Type
          vObject
        )
    → λ ( cat
        : ./Kind sha256:c73426d12cddcdfc44b6e687fc897f7ef91fcda0c4da116a91acdca4d15c68a2
          kCat
          vObject
          object
        )
    → let vBase =
            ./Monoidal/extractCategory sha256:936b393338b8dcf60af6c25ecea2b0b02d83e18acfed60ff736754fe0c1d7b3d
            kCat
            Type
            vObject
            v
      
      let Endofunctor =
            ./../Functor/Endo/Type sha256:158c6ae27571d27adefd3b94b6b9ce3ed48e1130d406ec72c62ccadcf931dcd0
            vObject
      
      in  { Adjunction =
              ./../Adjunction/Type sha256:9f462ba882ff165dc54ad4130625161af51d1df5530cfc925150f18ba4f24f25
              object
              object
              cat
              cat
          , Bifunctor =
              ./../Functor/Bifunctor/Type sha256:d8949693dfb049e8d09615a9e1e7037418bc3e654d2eeecfc61e41a99e7daf41
              vObject
              object
              object
              object
              v
              cat
              cat
              cat
          , Category =
              ./Type sha256:5792bd3a482ad0d318aecda464bd952a6561dc1119bdc1f5db574cfc3b66e095
              object
          , Codensity =
              ./../Codensity/Type sha256:b0945f99031bc91ed9a0bc7c25b48ef903bf0c3746ac6fcaaeb04fefa0b652e1
              object
          , Comonad =
              ./../Comonad/Type sha256:d13db9e0b984aa3ad4e658ae2574973a4a477d0f8ca3b88c3b5a79d0799536c8
              object
              cat
          , Compose =
              ./../Compose/Type sha256:e830545569ce8ba04d3124a7ca93994fc93e18c0372616f45910253f0a00907d
              object
              object
              object
          , Const =
              ./../Const/Type sha256:d0d255964e7701c8f9aa67f01b9f97dac9fbbda16e9c326faa48cddc1cf63740
              object
              object
          , Costar =
              ./../Costar/Type sha256:bbaf7811fb808c09d2b46eb3a95324a50ac75d1c72b9edc523ce2e194b48855e
              vObject
              object
              cat
          , Coyoneda =
              ./../Coyoneda/Type sha256:019bbcfe9820f84256e25d6f948461e363f6ef7c18a516f7ed2204369385df4d
              object
              cat
          , Density =
              ./../Density/Type sha256:808487ede56e964755d21fa151dd6bacb120e8fbb24a937e8315c66091813531
              object
          , Endofunctor =
              Endofunctor object vBase cat
          , HomFunctor =
              ./../Functor/Hom sha256:fe32ab6637ecdcd22d50078702dc94679bd611851eaddf1e40fec26d6e32b184
              object
              v
              cat
          , Identity =
              ./../Identity/Type sha256:0d22fa254c96551228894f2adaedd4f45c0401759d18775e412ae41694f1d3e0
              object
          , Lan =
              ./../Lan/Type sha256:2edbc6596b56524c06bd7d0f89e30a4a273b5a8a2e53c65c09f2e2ae340891a4
              object
              object
              cat
          , Leibniz =
              ./../Leibniz/Kind sha256:a5b66002e6e42543925c88fc6fc8d6b528eda12277cc998a0cc254be408ae193
              object
              object
              cat
              cat
          , Monad =
              ./../Monad/Type sha256:d47c5141940d87e0a1ed370c52c27ddb1be4330b8c6684c90247f1f72eb77876
              object
              cat
          , NaturalTransformation =
              ./../NaturalTransformation/Type sha256:ae103806c5d0da8f35ba65b9c08afdcc86ed1d5d71eb2ed4a0d631119df51bbc
              object
              object
              cat
          , Profunctor =
              ./../Functor/Profunctor/Type sha256:cb60a14dd70d9116c64424b1368414ce44a425a238a17bf79efed6251fd8d13f
              object
              object
              v
              cat
              cat
          , Ran =
              ./../Ran/Type sha256:5047b1521693599d043a9c04270b2d4649481321743beae0ea4179975068d804
              object
              object
              cat
          , Semigroupoid =
              ./../Semigroupoid/Type sha256:c43adcdb5e9cb39774277d7dcbeb77a8c85a6d64458b129d1a92bac3711f132d
              object
          , Star =
              ./../Star/Type sha256:40299f511a6a0ec179c2752f6efb313ce65db208c3ea894a096e0bd59602d6fc
              vObject
              object
              cat
          , Strong =
              ./../Strong/Type sha256:7c36ad50721347c7e886786fe21b1ab6281c18682f378b5f5809ab7e53274a09
              object
              object
              v
              cat
              cat
          , Traversable =
                λ ( m
                  : kCat.arrow object object
                  )
              → Endofunctor
                object
                vBase
                ( ./Kleisli/category sha256:305a4efbaafe53c64977af42c8d0be72f689442060a575282f9d31d19ad974ca
                  vObject
                  object
                  cat
                  m
                )
          , Yoneda =
              ./../Yoneda/Type sha256:d83e9e99b0ed861bb05e89d49a6e73e857510a600045c199ebb555234538f4e5
              object
              cat
          }
