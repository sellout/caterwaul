let kCat =
      ./../../Category/Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let vObject = Type

let object = Type

let cat =
      ./../../Category/Monoidal/Cartesian/extractMonoidal sha256:8112e73d82fd63e4e8bb5628a8cea43f92518a02e56ad351c7f9558546e7f81a
      kCat
      vObject
      object
      ./../../Category/Set/monoidal/cartesian sha256:3a79a17d1c39a3df58efcc62fd96a2da0147bb29b524f57aa7c35942f653f164

let category =
      ./../../Category/Set/category sha256:9af6edd3937b2f3cada47051820a676475fd3e583b9ceecf60eeb544ec8c9b46

let bifunctor =
      ./../../Tuple/functor/pair sha256:df09688fed0657c884f1faee5402efbcfafc50f8076b2245c8cbf587c3b013da

in    λ ( m
        : object
        )
    → λ ( field
        : ./Type sha256:b582c0166857eaf6b528764afe6ba90abc905b9f0d57fd4f288f710d7662c5be
          m
        )
    →   { eq =
            field.additive.eq
        , partialLE =
            field.additive.partialLE
        }
      ∧ ./../terms.dhall sha256:5e757e0c5de81fec97eec834176e83076034d1d4916ecde4f7331aa56363b18b
        object
        cat
        category
        bifunctor
        m
        ( ./extractField sha256:4a8ec1de4c16bd9765219dd9040335a810966e2931f93c90d37e210c76571af0
          m
          field
        )
