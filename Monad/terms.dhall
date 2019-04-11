let kCat =
      ./../Category/Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let vObject = Type

let v =
      ./../Category/Monoidal/Cartesian/extractMonoidal sha256:25afdf2818357f9c4b9dac6652b82e730472c389a634f8417a6014d39c7cddc0
      kCat
      Type
      vObject
      ./../Category/Set/monoidal/cartesian sha256:48e8bea552638624a62335eab92acd1e0a04c28e8a0d8fe1c8974565065a9576

let vBase =
      ./../Category/Monoidal/extractCategory sha256:936b393338b8dcf60af6c25ecea2b0b02d83e18acfed60ff736754fe0c1d7b3d
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
        : ./../Semigroupoid/Type sha256:c43adcdb5e9cb39774277d7dcbeb77a8c85a6d64458b129d1a92bac3711f132d
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
        : ./Type sha256:d47c5141940d87e0a1ed370c52c27ddb1be4330b8c6684c90247f1f72eb77876
          object
          cat
          m
        )
    → let extractStarfunctor =
            ./impliedStarfunctor sha256:9f0b07169975c0e36ccdca72a4d1b8728484206c6be328b50c3616efb4e26925
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
