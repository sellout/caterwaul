let kArrow =
      ./../Function/Kind sha256:0b6372c593badac5fe880699fd1cf19dfba07c62fab935a8bad96915866f466e

let kProduct =
      ./../Tuple/Kind sha256:03e1c52890f0cda1a2181cd3eb045d5344fc7c907fcbf836736c0e3222c5ffd8

let vObject = Type

in    λ ( object
        : Kind
        )
    → λ ( v
        : ./Monoidal/Kind sha256:f05d8665b46c686b6b930ad18aad6e1daa8c7a9c104d7bbeec947389d4d83e48
          kArrow
          kProduct
          Type
          vObject
        )
    → λ ( cat
        : ./Kind sha256:41ea86fd34226d0dc3c87cc12f9ce042e3b54e7eb77b451cdbfb085ba3f66916
          kArrow
          kProduct
          vObject
          object
        )
    → let vBase =
            ./Monoidal/extractCategory sha256:f8fd8dd2ec93dac14e091587db11696f084c1d8eb9de88b71b625151904db9ff
            kArrow
            kProduct
            Type
            vObject
            v
      
      let Endofunctor =
            ./../Functor/Endo/Type sha256:f7141343200ccaa9a1f80d06732e331624a3edd9e92b9ec3153db87c468fafe3
            vObject
      
      in  { Adjunction =
              ./../Adjunction/Type sha256:51ae2b2aced57c2ce57608835fd4331ac08731d0186f42dcf4149fac498b6862
              object
              object
              cat
              cat
          , Bifunctor =
              ./../Functor/Bifunctor/Type sha256:36f2a4b32c8e3b6a9a6d24d1289772f6aed01f9b314c9c8c5624e2dc42695d30
              vObject
              object
              object
              object
              v
              cat
              cat
              cat
          , Category =
              ./Type sha256:b5245b1f92f65f1b72bbfac6c53ebc19dc3c778b775b19ea4ad73fa6d2569dcb
              object
          , Codensity =
              ./../Codensity/Type sha256:87aecef733f578301b6b47822bcf1015c7cf5e7700c705cecec2f2bce732349a
              object
          , Comonad =
              ./../Comonad/Type sha256:a197cedf53d6fab62ebbf59d0139b243e3bd71ff5a4b1bbfd9bd3b476762f9b7
              object
              cat
          , Compose =
              ./../Compose/Type sha256:e18cb4b2004c6cf2789b492be4e1b912e3299eca94c229dc5913a11d55bcd72c
              object
              object
              object
          , Const =
              ./../Const/Type sha256:afc07425afed62cb4caa3f39fad3d935f236f71c056585b7dc4f1c7ecba31dbc
              object
              object
          , Costar =
              ./../Costar/Type sha256:8d50f81202ab49a78478d1fb61b301bde91fe682f04cc2b1e69cc76180e75f66
              vObject
              object
              cat
          , Coyoneda =
              ./../Coyoneda/Type sha256:17701cd67ebd40812cf82947493a9642722565d92d02a34fe4b4bb09ead53760
              object
              cat
          , Density =
              ./../Density/Type sha256:84157cd62f47d0dcdbd085ef1d062692963963e44934d06ba785c241c981753c
              object
          , Endofunctor =
              Endofunctor object vBase cat
          , HomFunctor =
              ./../Functor/Hom sha256:b3ea70ee7072e9919805ebbfee1c6ae8a558b3983ecb847307a1e66a220b1c72
              object
              v
              cat
          , Identity =
              ./../Identity/Type sha256:0f2ca3c3cd4682978197536d6365c4002a9b95ebbe882e8562879ee16736c3ae
              object
          , Lan =
              ./../Lan/Type sha256:9ca4462b685f10f495c272b038e14f3057cef70898133772a5ef07dbaf5be0e1
              object
              object
              cat
          , Leibniz =
              ./../Leibniz/Kind sha256:3b3493422c5f205484219d6726b5cc60f39f501f5e750e5e44d2053e3ab87f77
              object
              object
              cat
              cat
          , Monad =
              ./../Monad/Type sha256:081e7d7d11c47a6170ed19e4593cc9f55600302a7aa5128a643f5e56c890eb05
              object
              cat
          , NaturalTransformation =
              ./../NaturalTransformation/Type sha256:1fb48a77c7998793c06084794271a92131143f42dc9f1a95cd8146b6aeda7d5e
              object
              object
              cat
          , Profunctor =
              ./../Functor/Profunctor/Type sha256:b49ae06477f88b9ef50357cd60262da0bbe266d8af1cbe3c5a6b8d6cee32df44
              object
              object
              v
              cat
              cat
          , Ran =
              ./../Ran/Type sha256:14da02cb2fa4ad84be6ff3180eab70fe7c2055572124171e2ee754e2a6a72b33
              object
              object
              cat
          , Semigroupoid =
              ./../Semigroupoid/Type sha256:8cb9ba1a061053c5b685c45eefe13ace83aff91ddb0d381f204af51240ff4606
              object
          , Star =
              ./../Star/Type sha256:308e2835b712bb5e5dc9f2879d64c8a1c4ba3d7d4c5add781b8bd37a91b144ea
              vObject
              object
              cat
          , Strong =
              ./../Strong/Type sha256:756061802c96ae4038f3c9b66153199f7660862a56802d213746a1227ba05234
              object
              object
              v
              cat
              cat
          , Traversable =
                λ ( m
                  : kArrow object object
                  )
              → Endofunctor
                object
                vBase
                ( ./Kleisli/category sha256:0056c0e307e6067079ea8639413ea2afbeedf3294556842a376a1a56db060e0b
                  vObject
                  object
                  cat
                  m
                )
          , Yoneda =
              ./../Yoneda/Type sha256:851fb05baca35e5208b96212af4362baf4bed66ff336a90936ff7e46003c47ca
              object
              cat
          }
