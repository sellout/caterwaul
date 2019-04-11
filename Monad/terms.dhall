let kCat =
      ./../Category/Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let vObject = Type

let v =
      ./../Category/Monoidal/Cartesian/extractMonoidal sha256:8112e73d82fd63e4e8bb5628a8cea43f92518a02e56ad351c7f9558546e7f81a
      kCat
      Type
      vObject
      ./../Category/Set/monoidal/cartesian sha256:3a79a17d1c39a3df58efcc62fd96a2da0147bb29b524f57aa7c35942f653f164

let vBase =
      ./../Category/Monoidal/extractCategory sha256:c9807a603a6bd9f0ef13debb0f11e63d6f7133870fef175f27d08dd81c2ff695
      kCat
      Type
      vObject
      v

in    λ ( object
        : Kind
        )
    → λ ( cat
        : ./../Category/Kind sha256:c73426d12cddcdfc44b6e687fc897f7ef91fcda0c4da116a91acdca4d15c68a2
          kCat
          vObject
          object
        )
    → λ ( semigroupoid
        : ./../Semigroupoid/Type sha256:40a8e489fddee04bb4fda6df908b24c2143a7f75b4c5e25eec9fd34e7947bbb8
          object
          v
          cat
          cat.arrow
        )
    → λ(m : kCat.arrow object object)
    → λ ( functor
        : ./../Functor/Endo/Type sha256:158c6ae27571d27adefd3b94b6b9ce3ed48e1130d406ec72c62ccadcf931dcd0
          vObject
          object
          vBase
          cat
          m
        )
    → λ ( monad
        : ./Type sha256:f29e46a0fad45deefe74dbaf6daf7ff1abaaf7b02d672dfc254245ebc0cd651a
          object
          cat
          m
        )
    → let extractStarfunctor =
            ./impliedStarfunctor sha256:072a0dfab807d859a0edd17ea79a7ab65a3e5e502105bf0379b1267181aa6e33
            object
            cat
            semigroupoid
            m
            functor
            monad
      
      in  { map =
              functor.map
          , pure =
              monad.unit
          , join =
              monad.product
          , bind =
              extractStarfunctor.map
          , extractStarfunctor =
              extractStarfunctor
          }
