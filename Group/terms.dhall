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
          → λ ( group
              : ./Type sha256:1d2eb52b6091711502e80d646cab25260b08324221c423c04df23b76e600b2c0
                object
                cat
                m
              )
          →   { inverse =
                  group.inverse
              , leftQuotient =
                  ./leftQuotient sha256:a4b420bce76087a1e02ea4d9ca7b2eddf611b78ffd65421cc395e994f4569256
                  object
                  cat
                  category
                  bifunctor
                  m
                  group
              , rightQuotient =
                  ./rightQuotient sha256:f467c545710e199da12304ed8761cac63b86788eb4d0d2aaf8ce56a4ed30d000
                  object
                  cat
                  category
                  bifunctor
                  m
                  group
              }
            ∧ ./../Monoid/terms.dhall sha256:b906e84f120eec0dfe1541cf68aa1443c9a8d74f943d7f357b82f11d92926796
              object
              cat
              m
              ( ./extractMonoid sha256:43250fa0d527ae8fa554881a0f91783870ffeb02c279dede032649071682b484
                object
                cat
                m
                group
              )
