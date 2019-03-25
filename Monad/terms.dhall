let kArrow =
      ./../Function/Kind sha256:0b6372c593badac5fe880699fd1cf19dfba07c62fab935a8bad96915866f466e

let kProduct =
      ./../Tuple/Kind sha256:03e1c52890f0cda1a2181cd3eb045d5344fc7c907fcbf836736c0e3222c5ffd8

let vObject = Type

let v =
      ./../Category/Set/monoidal/cartesian sha256:b017581ee66eec1995d52c80d527598dd5614254bf7217768c035c3a5e2103bd

let vBase =
      ./../Category/Monoidal/extractCategory sha256:f8fd8dd2ec93dac14e091587db11696f084c1d8eb9de88b71b625151904db9ff
      kArrow
      kProduct
      Type
      vObject
      v

in    λ ( object
        : Kind
        )
    → λ ( cat
        : ./../Category/Kind sha256:41ea86fd34226d0dc3c87cc12f9ce042e3b54e7eb77b451cdbfb085ba3f66916
          kArrow
          kProduct
          vObject
          object
        )
    → λ ( semigroupoid
        : ./../Semigroupoid/Type sha256:8cb9ba1a061053c5b685c45eefe13ace83aff91ddb0d381f204af51240ff4606
          object
          v
          cat
          cat.arrow
        )
    → λ(m : kArrow object object)
    → λ ( functor
        : ./../Functor/Endo/Type sha256:f7141343200ccaa9a1f80d06732e331624a3edd9e92b9ec3153db87c468fafe3
          vObject
          object
          vBase
          cat
          m
        )
    → λ ( monad
        : ./Type sha256:081e7d7d11c47a6170ed19e4593cc9f55600302a7aa5128a643f5e56c890eb05
          object
          cat
          m
        )
    → let extractStarfunctor =
            ./impliedStarfunctor sha256:1d675b44b4bc5ebe652f969661e9f17cea2794ac4d4221b95a7f1adb5cde145c
            object
            cat
            semigroupoid
            m
            functor
            monad
      
      in  { map =
              functor.map
          , pure =
              monad.identity
          , join =
              monad.op
          , bind =
              extractStarfunctor.map
          , extractStarfunctor =
              extractStarfunctor
          }
