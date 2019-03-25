let kArrow =
      ./../Function/Kind sha256:0b6372c593badac5fe880699fd1cf19dfba07c62fab935a8bad96915866f466e

let kProduct =
      ./../Tuple/Kind sha256:03e1c52890f0cda1a2181cd3eb045d5344fc7c907fcbf836736c0e3222c5ffd8

let vObject = Type

let v =
      ./../Category/Set/monoidal/cartesian sha256:b017581ee66eec1995d52c80d527598dd5614254bf7217768c035c3a5e2103bd

in    λ ( object
        : Kind
        )
    → λ ( cat
        : ./../Category/Monoidal/Kind sha256:f05d8665b46c686b6b930ad18aad6e1daa8c7a9c104d7bbeec947389d4d83e48
          kArrow
          kProduct
          vObject
          object
        )
    → let base =
            ./../Category/Monoidal/extractCategory sha256:f8fd8dd2ec93dac14e091587db11696f084c1d8eb9de88b71b625151904db9ff
            kArrow
            kProduct
            vObject
            object
            cat
      
      in    λ ( category
              : ./../Category/Type sha256:b5245b1f92f65f1b72bbfac6c53ebc19dc3c778b775b19ea4ad73fa6d2569dcb
                object
                v
                base
              )
          → λ ( bifunctor
              : ./../Functor/Bifunctor/Type sha256:36f2a4b32c8e3b6a9a6d24d1289772f6aed01f9b314c9c8c5624e2dc42695d30
                vObject
                object
                object
                object
                v
                base
                base
                base
                cat.op
              )
          → λ(m : object)
          → λ ( ring
              : ./Type sha256:77b44df8cc75bc4287fe797e2d655776283097caed2e17d0ccadf43eb96ee046
                object
                cat
                m
              )
          →   { negate =
                  ring.additive.inverse
              , subtract =
                  ./subtract sha256:49abf0b247d83bbc8fa1051357b7f17982a4e613b7d9b9b5e49213cbb4434c4d
                  object
                  cat
                  category
                  bifunctor
                  m
                  ring
              }
            ∧ ./../Rig/terms.dhall sha256:3189a56e4a8fee7dd2163f50d15e08a8ba36fdd60f811d96a1228e56a10db179
              object
              cat
              m
              ( ./extractRig sha256:6d35c8d4dba7fd81357b9427b6a6663ba825dfd5884b10f652779f5385fb9041
                object
                cat
                m
                ring
              )
