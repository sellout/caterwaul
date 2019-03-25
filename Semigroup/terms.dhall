let kArrow =
      ./../Function/Kind sha256:0b6372c593badac5fe880699fd1cf19dfba07c62fab935a8bad96915866f466e

let kProduct =
      ./../Tuple/Kind sha256:03e1c52890f0cda1a2181cd3eb045d5344fc7c907fcbf836736c0e3222c5ffd8

let vObject = Type

in    λ ( object
        : Kind
        )
    → λ ( cat
        : ./../Category/Semigroupal/Kind sha256:c397273f09d2bc88d7fb86edfcdc776644a7d9ad34ecd55177bd834e624af11e
          kArrow
          kProduct
          vObject
          object
        )
    → λ(m : object)
    → λ ( semigroup
        : ./Type sha256:55c25eb9497197855d422125e85bac2769f31104b33c1ac1df40da0e4957990f
          object
          cat
          m
        )
    → semigroup.{ op }
