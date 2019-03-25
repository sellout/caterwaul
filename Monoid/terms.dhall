let kArrow =
      ./../Function/Kind sha256:0b6372c593badac5fe880699fd1cf19dfba07c62fab935a8bad96915866f466e

let kProduct =
      ./../Tuple/Kind sha256:03e1c52890f0cda1a2181cd3eb045d5344fc7c907fcbf836736c0e3222c5ffd8

let vObject = Type

in    λ ( object
        : Kind
        )
    → λ ( cat
        : ./../Category/Monoidal/Kind sha256:f05d8665b46c686b6b930ad18aad6e1daa8c7a9c104d7bbeec947389d4d83e48
          kArrow
          kProduct
          vObject
          object
        )
    → λ(m : object)
    → λ ( monoid
        : ./Type sha256:e77cd694d6adbfc7e642969bbe8da7bcbbd8966cc245076b4e192f9af5948f67
          object
          cat
          m
        )
    →   monoid.{ identity
               }
      ∧ ./../Semigroup/terms.dhall sha256:54afc1022e4c2623efc5c7bfd31c02c3378856b5ea6b031cbba71a46c7368724
        object
        ( ./../Category/Monoidal/extractSemigroupal sha256:f514d5b9277f7d727be8a367e89c224c82cfc6fab5624132973a240d8e13c01e
          kArrow
          kProduct
          vObject
          object
          cat
        )
        m
        ( ./extractSemigroup sha256:4b5ff7433a08e9031f92fe19b46bfe1f5952956040d78858e908f702782c9856
          object
          cat
          m
          monoid
        )
