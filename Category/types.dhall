let kCat =
      ./Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let vObject = Type

in    λ ( object
        : Kind
        )
    → λ ( v
        : ./Monoidal/Kind sha256:8e77a076f4c2f6e1d0ad07cfec37dfd04782e1a0a7e98a72a305233f69c494ca
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
            ./Monoidal/extractCategory sha256:c9807a603a6bd9f0ef13debb0f11e63d6f7133870fef175f27d08dd81c2ff695
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
              ./../Functor/Bifunctor/Type sha256:5d415a75b8765b342fa599191990337e1a14767512f5714217a95b7adeac171c
              vObject
              object
              object
              object
              v
              cat
              cat
              cat
          , Category =
              ./Type sha256:3983e08568dd06043567236a0b0ceb489d34346ea7cc29bd9c4d98bd567e03b9
              object
          , Codensity =
              ./../Codensity/Type sha256:b0945f99031bc91ed9a0bc7c25b48ef903bf0c3746ac6fcaaeb04fefa0b652e1
              object
          , Comonad =
              ./../Comonad/Type sha256:5ef8ab824c6bf670bbf787d84043177e063e0b3d4565907c2d70a54afd5cbd84
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
              ./../Functor/Hom sha256:ee7d283804ed20f17af0b6169d2cbeb87532973668d49b25b7810578fcc57e1a
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
              ./../Monad/Type sha256:f29e46a0fad45deefe74dbaf6daf7ff1abaaf7b02d672dfc254245ebc0cd651a
              object
              cat
          , NaturalTransformation =
              ./../NaturalTransformation/Type sha256:ae103806c5d0da8f35ba65b9c08afdcc86ed1d5d71eb2ed4a0d631119df51bbc
              object
              object
              cat
          , Profunctor =
              ./../Functor/Profunctor/Type sha256:ecb32be3f9e51adf178db451061685e4ffccdf7267970e9dd77d91042a642a04
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
              ./../Semigroupoid/Type sha256:40a8e489fddee04bb4fda6df908b24c2143a7f75b4c5e25eec9fd34e7947bbb8
              object
          , Star =
              ./../Star/Type sha256:40299f511a6a0ec179c2752f6efb313ce65db208c3ea894a096e0bd59602d6fc
              vObject
              object
              cat
          , Strong =
              ./../Strong/Type sha256:8d15bf8a05c49b4d54bdcf05cbbbcb61976fe0e5723d2e2396693a9b4d6f4dc3
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
