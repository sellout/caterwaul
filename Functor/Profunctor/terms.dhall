let kArrow =
      ./../../Function/Kind sha256:0b6372c593badac5fe880699fd1cf19dfba07c62fab935a8bad96915866f466e

let kProduct =
      ./../../Tuple/Kind sha256:03e1c52890f0cda1a2181cd3eb045d5344fc7c907fcbf836736c0e3222c5ffd8

in    λ ( cObject
        : Kind
        )
    → λ(cArrow : kArrow (kProduct cObject cObject) Type)
    → λ ( cCategory
        : ./../../Category/Type sha256:56874495587bd8bf58b702382562e4aed91603b64a2d6893413c72d5bf265596
          cObject
          cArrow
        )
    → λ(dObject : Kind)
    → λ(dArrow : kArrow (kProduct dObject dObject) Type)
    → λ ( dCategory
        : ./../../Category/Type sha256:56874495587bd8bf58b702382562e4aed91603b64a2d6893413c72d5bf265596
          dObject
          dArrow
        )
    → ./../Bifunctor/terms.dhall sha256:c7dec0e99d03501dbeaeffa716ac883558d452154e173f821b6334d8cd25e2e3
      dObject
      ( ./../../Category/Op/Type sha256:ed18079f3fe5ecb275074781d4f90158ec3fdbc9e48c40e77c1f9af77a8dd387
        dObject
        dArrow
      )
      ( ./../../Category/Op/category sha256:79973bf8b8cdb999c7fd06e2746e66a8e0cf70abe6ec514f6f6e03a38e5e4337
        dObject
        dArrow
        dCategory
      )
      cObject
      cArrow
      cCategory
      Type
      ./../../Function/Type sha256:44d58123a7ba6bd4f59a8f0fe8363ca585db3061ae3f369d3a26607a127f7927
