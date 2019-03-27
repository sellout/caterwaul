let kArrow =
      ./../../Function/Kind sha256:0b6372c593badac5fe880699fd1cf19dfba07c62fab935a8bad96915866f466e

let kProduct =
      ./../../Tuple/Kind sha256:03e1c52890f0cda1a2181cd3eb045d5344fc7c907fcbf836736c0e3222c5ffd8

let MonoidalCategory =
      ./../Monoidal/Kind sha256:f05d8665b46c686b6b930ad18aad6e1daa8c7a9c104d7bbeec947389d4d83e48
      kArrow
      kProduct

let vObject = Type

in    λ ( object
        : Kind
        )
    → λ(v : MonoidalCategory Type vObject)
    → λ(cat : MonoidalCategory vObject object)
    → ./../Monoidal/types.dhall sha256:24b39f8c71f7f30b1e4796d99b6cd8950a83df9e0b2c7ab7963d0b07cb2d3adb
      object
      v
      ( ./monoidal sha256:b7ec2bd747f2a9914a3e151ff3711de4c56c2d54954e518568ad00ab1db24103
        vObject
        object
        cat
      )
