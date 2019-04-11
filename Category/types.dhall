let kCat =
      ./Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let vObject = Type

in    λ ( object
        : Kind
        )
    → λ ( v
        : ./Monoidal/Kind sha256:96b5eca83adb85b7bc744975b530210da2aec17c9c70b45d3b241ccfdb47e772
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
            ./Monoidal/extractCategory sha256:be63455106b8fe90ee7366a02f05b29c1aa42e63243bb9994d55011052eab6ec
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
              ./../Functor/Bifunctor/Type sha256:caf45fd32cae3f88e6a8d93c3d81737e6d2abdf1a6ed90efc7b69906b65e7ba0
              vObject
              object
              object
              object
              v
              cat
              cat
              cat
          , Category =
              ./Type sha256:a3968397f7c9a309d7c4eed545517a4e6f451eff463aaaf274fd1c7d37cb3004
              object
          , Codensity =
              ./../Codensity/Type sha256:b0945f99031bc91ed9a0bc7c25b48ef903bf0c3746ac6fcaaeb04fefa0b652e1
              object
          , Comonad =
              ./../Comonad/Type sha256:6ddfa25c10ab6487474f62a2f4962d2a1ea8d2ef42a646a14add738717e861bf
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
              ./../Functor/Hom sha256:4b7bbe0c0fe08ad3dce24f104e1e282429ef8058c97060e36ce90f92012708a6
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
              ./../Monad/Type sha256:0324dd40fc192581e566136f5cde4424ed653ecf7311b967b7d291d05484b78e
              object
              cat
          , NaturalTransformation =
              ./../NaturalTransformation/Type sha256:ae103806c5d0da8f35ba65b9c08afdcc86ed1d5d71eb2ed4a0d631119df51bbc
              object
              object
              cat
          , Profunctor =
              ./../Functor/Profunctor/Type sha256:e47d2dd146c4c8665da2d6f5363fd37ff59971aaa354bfa1f1be9fca965ce307
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
              ./../Semigroupoid/Type sha256:b5492226c5be6bd719ab035c9286b707b273e6b191f3b8b572e51394688717c6
              object
          , Star =
              ./../Star/Type sha256:40299f511a6a0ec179c2752f6efb313ce65db208c3ea894a096e0bd59602d6fc
              vObject
              object
              cat
          , Strong =
              ./../Strong/Type sha256:f826a092356d88b7bc710c0552b54ab6f109219108cb032fdb6b0d58594b9c54
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
