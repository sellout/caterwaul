let kArrow =
      ./../../Function/Kind sha256:0b6372c593badac5fe880699fd1cf19dfba07c62fab935a8bad96915866f466e

let kProduct =
      ./../../Tuple/Kind sha256:03e1c52890f0cda1a2181cd3eb045d5344fc7c907fcbf836736c0e3222c5ffd8

in    λ ( object
        : Kind
        )
    → λ(arrow : kArrow (kProduct object object) Type)
    → λ ( category
        : ./../../Category/Type sha256:56874495587bd8bf58b702382562e4aed91603b64a2d6893413c72d5bf265596
          object
          arrow
        )
    → ./../Bifunctor/terms.dhall sha256:c7dec0e99d03501dbeaeffa716ac883558d452154e173f821b6334d8cd25e2e3
      object
      arrow
      category
      object
      arrow
      category
      object
      arrow
