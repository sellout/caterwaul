let kCat =
      ./../Category/Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let vObject = Type

let v =
      ./../Category/Monoidal/Cartesian/extractMonoidal sha256:0fcc63fc837459ca2866d31c5b11400b56fcb8f7d1846b774e98b47995c1879a
      kCat
      Type
      vObject
      ./../Category/Set/monoidal/cartesian sha256:b6efbdc0effbca1bc7427c980f2579012808494a8195fdf9fb52aea37ae91116

let vBase =
      ./../Category/Monoidal/extractCategory sha256:be63455106b8fe90ee7366a02f05b29c1aa42e63243bb9994d55011052eab6ec
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
        : ./../Semigroupoid/Type sha256:b5492226c5be6bd719ab035c9286b707b273e6b191f3b8b572e51394688717c6
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
        : ./Type sha256:0324dd40fc192581e566136f5cde4424ed653ecf7311b967b7d291d05484b78e
          object
          cat
          m
        )
    → let extractStarfunctor =
            ./impliedStarfunctor sha256:6abee7f440f314c1d05b0fd96c62d0abf28be7e1380d75f4feef8c5702abc0d0
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
              monad.product
          , bind =
              extractStarfunctor.map
          , extractStarfunctor =
              extractStarfunctor
          }
