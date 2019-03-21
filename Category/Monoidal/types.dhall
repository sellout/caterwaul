let kArrow =
      ./../../Function/Kind sha256:0b6372c593badac5fe880699fd1cf19dfba07c62fab935a8bad96915866f466e

let kProduct =
      ./../../Tuple/Kind sha256:03e1c52890f0cda1a2181cd3eb045d5344fc7c907fcbf836736c0e3222c5ffd8

in    λ ( object
        : Kind
        )
    → λ ( cat
        : ./Kind sha256:c90d64b23bd9269a630ed0e3c5202fef1969034543a57c20db10215d7092fe22
          kArrow
          kProduct
          object
        )
    → let Set =
            ./../Set/monoidal/cartesian sha256:b3c97e385d62b718ab11e540a98141cb81b89db0d7c1115ec11b330c596dcf01
      
      let Endofunctor =
            ./../../Functor/Endo/Type sha256:f230e076c15a9ae4eb91c84519b9ab384e03b03f0246ebe4dfdf3a2bb82b251a
      
      let Star =
            ./../../Star/Type sha256:d7ac58f30d93bd5abe3c3134da0412899a896d023b3c5a92484941e738939ffc
            object
            cat.arrow
      
      let Costar =
            ./../../Costar/Type sha256:3570ebe2798743143b61af00a7c2ab7417673b52ce86a07b0e6125841a00d35c
            object
            cat.arrow
      
      in  { Adjunction =
              ./../../Adjunction/Type sha256:917b36907d485af32d70d8d455f14f88a924980bfe626eaf8013371cd04a89fb
              object
              object
              cat.arrow
              cat.arrow
          , Arrow =
              ./../../Arrow/Type sha256:3883ef2c52128bb38cc4ba8f9ce1354f170d3b1d37854c2118b4ab88135d4a69
          , Bifunctor =
              ./../../Functor/Bifunctor/Type sha256:941c217fa6ee86da9597e1a86270a67bb1c9d62fe62f6d786fe6454a05fd72fa
              object
              object
              object
              cat.arrow
              cat.arrow
              cat.arrow
          , Category =
              ./../Type sha256:56874495587bd8bf58b702382562e4aed91603b64a2d6893413c72d5bf265596
              object
          , Codensity =
              ./../../Codensity/Type sha256:34365939359b31f1c876dde4f774b64d72bb52db06932ee8d050b01be305ce41
              object
          , CommutativeGroup =
              ./../../Group/Commutative/Type sha256:85e3cfd09df263fe9c3f4c4b97633f9613d96c42075c18416eb6da89f0945b47
              object
              cat
          , CommutativeMonoid =
              ./../../Monoid/Commutative/Type sha256:a070e866a0c8ab80b910b06a9f007023adaa3ce08b60200bbd7b685752717249
              object
              cat
          , Comonad =
              ./../../Comonad/Type sha256:f4df0fb438550e7ab95bad1373735669107b4d3027365755ed77d8dd5aea40b9
              object
              cat.arrow
          , Compactable =
              ./../../Functor/Compactable/Type sha256:6f95bfb114aaaa20cf9adc2492d0a6a7c2a9b5c273f82584aa3914885d7d5dcc
          , Compose =
              ./../../Compose/Type sha256:e18cb4b2004c6cf2789b492be4e1b912e3299eca94c229dc5913a11d55bcd72c
              object
              object
              object
          , Const =
              ./../../Const/Type sha256:afc07425afed62cb4caa3f39fad3d935f236f71c056585b7dc4f1c7ecba31dbc
              object
              object
          , Costar =
              Costar
          , Coyoneda =
              ./../../Coyoneda/Type sha256:6c877812aa9ce1bc305cd55ccd651aae5941b2d1a6a37bdef23eb1533acbfbb9
              object
              cat.arrow
          , Day =
              ./../../Day/Type sha256:681b4b22f4cd4484c75a93d75c4c4a58c7d7b146d8f9e1a52602b49a8fb51f87
              object
              cat
          , Density =
              ./../../Density/Type sha256:70c58def56ab15ad7910f3f716046f56316ad5f7b6547645fa68889e23b62f10
              object
          , Either =
              ./../../Either/Type sha256:9ac62b105c684db0a562407c0132176c20e93cb29e9434f9b600ed5806cd9fc0
          , Endofunctor =
              Endofunctor object cat.arrow
          , Eq =
              ./../../Eq/Type sha256:6084124c32c2894f3ef6aff7f8762769b309face3a6b507b3cd1108d2fa6b179
          , Field =
              ./../../Field/Type sha256:4cbccc76562039dff6963e815d37d2bffc2f1c8cf0735e1c89d9ae373ed39efe
              object
              cat
          , Function =
              ./../../Function/Type sha256:44d58123a7ba6bd4f59a8f0fe8363ca585db3061ae3f369d3a26607a127f7927
          , Group =
              ./../../Group/Type sha256:85e3cfd09df263fe9c3f4c4b97633f9613d96c42075c18416eb6da89f0945b47
              object
              cat
          , HomFunctor =
              ./../../Functor/Hom sha256:0a8264c503e02af1c322938690f41a90ea25d5d4ae23cb3ba5b9da0b9d5f423b
              object
              cat.arrow
          , Identity =
              ./../../Identity/Type sha256:0f2ca3c3cd4682978197536d6365c4002a9b95ebbe882e8562879ee16736c3ae
              object
          , InternalHomFunctor =
              ./../../Functor/InternalHom sha256:4c661950828037b67dbb78c1d8314d047bf44a34dd8cb55109a8b44403a94474
              object
          , Lan =
              ./../../Lan/Type sha256:0a24ae0e2725039bedcdd6985fc300164a47ad8eeef4cbbed689d0b13a05fe1f
              object
              object
              cat.arrow
          , Leibniz =
              ./../../Leibniz/Type sha256:575c8feae22c36c9466607c6b2f4ca05d7ce2c76e96593b0ef3694ef75a1f40d
              object
              object
              cat.arrow
          , Monad =
              ./../../Monad/Type sha256:8001bfc30d9f2c2126215a85e75eb12648fabceb5ea6cdcb05d599256d8dc1bf
              object
              cat.arrow
          , Monoid =
              ./../../Monoid/Type sha256:a070e866a0c8ab80b910b06a9f007023adaa3ce08b60200bbd7b685752717249
              object
              cat
          , MonoidalFunctor =
              ./../../Functor/Monoidal/Type sha256:bf47360872158ca906f90c060e3a3339c2ca60a630baa0446884e840ca7fbf70
              object
              cat
              Set
          , NaturalTransformation =
              ./../../NaturalTransformation/Type sha256:ac4ec9bf178715d3e80e93c72406abcaa99f0e70df64e30d76047afb6777ac95
              object
              object
              cat.arrow
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
          , Profunctor =
              ./../../Functor/Profunctor/Type sha256:da73e03c6c6fee307e1bda9ebcd75448fe5ca19edd857c42637ae41515631cff
              object
              object
              cat.arrow
              cat.arrow
          , Ran =
              ./../../Ran/Type sha256:5126ad6abdcdefab99fc1da45b21430cad31abcaee77cf79632340e26e36aabd
              object
              object
              cat.arrow
          , Rig =
              ./../../Rig/Type sha256:8de0514c79f1515d5fdd0026135a9ee8064b6733c0121d0cd6ced50f27286e97
              object
              cat
          , Ring =
              ./../../Ring/Type sha256:ccfe4e84b3cb4751a759f879ccfc4bf3aba84ccf734b631c6094fc8c2ce7ae3e
              object
              cat
          , Semigroup =
              ./../../Semigroup/Type sha256:d1635ee2a3c9117f5d330d01ec4ae277f46bd0726c670179994510a57c2fbc32
              object
              ( ./extractSemigroupal sha256:70ef91047fc61f9b95bc9a7c791c6e18d62c8c91d88741f2f72a070b3e820f1f
                kArrow
                kProduct
                object
                cat
              )
          , Semigroupoid =
              ./../../Semigroupoid/Type sha256:7ea3ed050672efbe97058fdf8cee2c448261528fb9df88e77792684384125059
              object
          , Semiring =
              ./../../Semiring/Type sha256:c970caa7b60b6e071b3868da13afb842a49b75936719ac48782ec1d711524a0f
              object
              cat
          , Star =
              Star
          , Strong =
              ./../../Strong/Type sha256:c94a55422f313b4bb76f6c26e9174faf380c821f740e71351b4ad66e0c2a09b3
              object
              object
              cat.arrow
              cat.arrow
          , Traversable =
              λ(m : kArrow object object) → Endofunctor object (Star m)
          , Tuple =
              ./../../Tuple/Type sha256:3e54b0739d8286354614bb58323e74a8575dabbabfefed9324ea070a969a3227
          , Yoneda =
              ./../../Yoneda/Type sha256:70bf5d39106d0b96f318ec79d848af632b3c2ecc95eb1035b64baaf5c81e7b3e
              object
              cat.arrow
          }
