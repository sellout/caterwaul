let kArrow =
      ./../../Function/Kind sha256:0b6372c593badac5fe880699fd1cf19dfba07c62fab935a8bad96915866f466e

let kProduct =
      ./../../Tuple/Kind sha256:03e1c52890f0cda1a2181cd3eb045d5344fc7c907fcbf836736c0e3222c5ffd8

let vObject = Type

in    λ ( object
        : Kind
        )
    → λ ( v
        : ./../Monoidal/Kind sha256:f05d8665b46c686b6b930ad18aad6e1daa8c7a9c104d7bbeec947389d4d83e48
          kArrow
          kProduct
          Type
          vObject
        )
    → λ ( cat
        : ./Kind sha256:c397273f09d2bc88d7fb86edfcdc776644a7d9ad34ecd55177bd834e624af11e
          kArrow
          kProduct
          vObject
          object
        )
    →   { Arrow =
            ./../../Arrow/Type sha256:d4b81aeba858b5caff956bc7d0af2a96f261786f31907635c394ea2ddbf4db05
            object
            v
            cat
        , Semigroup =
            ./../../Semigroup/Type sha256:55c25eb9497197855d422125e85bac2769f31104b33c1ac1df40da0e4957990f
            object
            cat
        }
      ∧ ./../types.dhall sha256:ba6db6fca0c9310f9067aca5d5aff33b188942b1e765454d261aa08348b47810
        object
        v
        ( ./extractCategory sha256:e91af8eaf3c5c29c44bd0fc193a537c6048ddbb6adc6d17f2631ebd27f4de897
          kArrow
          kProduct
          vObject
          object
          cat
        )
