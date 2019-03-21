let kArrow =
      ./../Function/Kind sha256:0b6372c593badac5fe880699fd1cf19dfba07c62fab935a8bad96915866f466e

let kProduct =
      ./../Tuple/Kind sha256:03e1c52890f0cda1a2181cd3eb045d5344fc7c907fcbf836736c0e3222c5ffd8

in    λ ( object
        : Kind
        )
    → λ(arrow : kArrow (kProduct object object) Type)
    → λ ( semigroupoid
        : ./../Semigroupoid/Type sha256:7ea3ed050672efbe97058fdf8cee2c448261528fb9df88e77792684384125059
          object
          arrow
        )
    → λ(m : kArrow object object)
    → λ ( functor
        : ./../Functor/Endo/Type sha256:f230e076c15a9ae4eb91c84519b9ab384e03b03f0246ebe4dfdf3a2bb82b251a
          object
          arrow
          m
        )
    → λ ( monad
        : ./Type sha256:8001bfc30d9f2c2126215a85e75eb12648fabceb5ea6cdcb05d599256d8dc1bf
          object
          arrow
          m
        )
    → let extractStarfunctor =
            ./impliedStarfunctor sha256:b11a25783e9dfc89b15bf2dca97745556f58acf4702c37e229277a72da7ba843
            object
            arrow
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
