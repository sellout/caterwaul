let kArrow =
      ./../../Function/Kind sha256:0b6372c593badac5fe880699fd1cf19dfba07c62fab935a8bad96915866f466e

let kProduct =
      ./../../Tuple/Kind sha256:03e1c52890f0cda1a2181cd3eb045d5344fc7c907fcbf836736c0e3222c5ffd8

let vObject = Type

in    λ ( object
        : Kind
        )
    → λ ( v
        : ./Kind sha256:f05d8665b46c686b6b930ad18aad6e1daa8c7a9c104d7bbeec947389d4d83e48
          kArrow
          kProduct
          Type
          vObject
        )
    → λ ( cat
        : ./Kind sha256:f05d8665b46c686b6b930ad18aad6e1daa8c7a9c104d7bbeec947389d4d83e48
          kArrow
          kProduct
          vObject
          object
        )
    → let Set =
            ./../Set/monoidal/cartesian sha256:b017581ee66eec1995d52c80d527598dd5614254bf7217768c035c3a5e2103bd
      
      in    { CommutativeGroup =
                ./../../Group/Commutative/Type sha256:1d2eb52b6091711502e80d646cab25260b08324221c423c04df23b76e600b2c0
                object
                cat
            , CommutativeMonoid =
                ./../../Monoid/Commutative/Type sha256:e77cd694d6adbfc7e642969bbe8da7bcbbd8966cc245076b4e192f9af5948f67
                object
                cat
            , Day =
                ./../../Day/Type sha256:08b059e69330b8894b4a1830425eea70c2e4a0366c97e99cad8c073283bab16d
                object
                Set
                cat
            , Field =
                ./../../Field/Type sha256:a6589488cb3d578e43cf222dbbe82edf782ec86043d3032a5d54c2e3db958f5b
                object
                cat
            , Group =
                ./../../Group/Type sha256:1d2eb52b6091711502e80d646cab25260b08324221c423c04df23b76e600b2c0
                object
                cat
            , Monoid =
                ./../../Monoid/Type sha256:e77cd694d6adbfc7e642969bbe8da7bcbbd8966cc245076b4e192f9af5948f67
                object
                cat
            , MonoidalFunctor =
                ./../../Functor/Monoidal/Type sha256:3fd0a2398dd1d3c0cb029ce034f09d4c1b6f51e622139f06ad1086ceea926567
                object
                ( ./extractcategory sha256:f8fd8dd2ec93dac14e091587db11696f084c1d8eb9de88b71b625151904db9ff
                  kArrow
                  kProduct
                  Type
                  vObject
                  v
                )
                cat
                Set
            , Rig =
                ./../../Rig/Type sha256:3baff106e4b8032968b2fe0645306289090cac86c85317ab4281353146780a27
                object
                cat
            , Ring =
                ./../../Ring/Type sha256:77b44df8cc75bc4287fe797e2d655776283097caed2e17d0ccadf43eb96ee046
                object
                cat
            , Semiring =
                ./../../Semiring/Type sha256:8ef0a1efff6a14a542202cb12fcd94f8c9ddda235e2ce2133fc1da5efcb184be
                object
                cat
            }
          ∧ ./../Semigroupal/types.dhall sha256:229128827e0b2be96091589c5c92491b33619213335aa8414eb4322162645ef4
            object
            v
            ( ./extractSemigroupal sha256:f514d5b9277f7d727be8a367e89c224c82cfc6fab5624132973a240d8e13c01e
              kArrow
              kProduct
              vObject
              object
              cat
            )
