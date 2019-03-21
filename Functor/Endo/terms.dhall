let kArrow =
      ./../../Function/Kind sha256:0b6372c593badac5fe880699fd1cf19dfba07c62fab935a8bad96915866f466e

let kProduct =
      ./../../Tuple/Kind sha256:03e1c52890f0cda1a2181cd3eb045d5344fc7c907fcbf836736c0e3222c5ffd8

in    λ ( object
        : Kind
        )
    → λ(arrow : kArrow (kProduct object object) Type)
    → λ(f : kArrow object object)
    → λ ( functor
        : ./Type sha256:f230e076c15a9ae4eb91c84519b9ab384e03b03f0246ebe4dfdf3a2bb82b251a
          object
          arrow
          f
        )
    → { map = functor.map }
