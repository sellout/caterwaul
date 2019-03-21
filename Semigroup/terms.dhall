let kArrow =
      ./../Function/Kind sha256:0b6372c593badac5fe880699fd1cf19dfba07c62fab935a8bad96915866f466e

let kProduct =
      ./../Tuple/Kind sha256:03e1c52890f0cda1a2181cd3eb045d5344fc7c907fcbf836736c0e3222c5ffd8

in    λ ( object
        : Kind
        )
    → λ ( cat
        : ./../Category/Semigroupal/Kind sha256:37baf05781aa3f5d1ee124aa740389e91a140fd0f5bd87594fd1d9f3b5ddc05d
          kArrow
          kProduct
          object
        )
    → λ(m : object)
    → λ ( semigroup
        : ./Type sha256:d1635ee2a3c9117f5d330d01ec4ae277f46bd0726c670179994510a57c2fbc32
          object
          cat
          m
        )
    → semigroup.{ op }
