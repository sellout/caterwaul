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
          → λ ( field
              : ./Type sha256:a6589488cb3d578e43cf222dbbe82edf782ec86043d3032a5d54c2e3db958f5b
                object
                cat
                m
              )
          →   { divide =
                  ./divide sha256:151a968e4acb8bbedf17a9a603a87338758fdac5691a30938469fdfeb806d975
                  object
                  cat
                  category
                  bifunctor
                  m
                  field
              , reciprocal =
                  field.multiplicative.inverse
              }
            ∧ ./../Ring/terms.dhall sha256:7f908248698c8ca9df1d3defedd50073dddd8f37112a2049f610a24baad23e61
              object
              cat
              category
              bifunctor
              m
              ( ./extractRing sha256:cef463395d375ccd65f79387cc1352e4506def178f4ca9ecfc72e507853986f3
                object
                cat
                m
                field
              )
