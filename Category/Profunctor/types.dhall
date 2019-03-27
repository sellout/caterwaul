let kArrow =
      ./../../Function/Kind sha256:0b6372c593badac5fe880699fd1cf19dfba07c62fab935a8bad96915866f466e

let kProduct =
      ./../../Tuple/Kind sha256:03e1c52890f0cda1a2181cd3eb045d5344fc7c907fcbf836736c0e3222c5ffd8

let Category =
      ./../Kind sha256:41ea86fd34226d0dc3c87cc12f9ce042e3b54e7eb77b451cdbfb085ba3f66916
      kArrow
      kProduct

let MonoidalCategory =
      ./../Monoidal/Kind sha256:f05d8665b46c686b6b930ad18aad6e1daa8c7a9c104d7bbeec947389d4d83e48
      kArrow
      kProduct

let vObject = Type

in    λ(object : Kind)
    → λ(v : MonoidalCategory Type vObject)
    → λ(cat : Category vObject object)
    → ./../Semigroupal/types.dhall
      (kArrow (kProduct object object) vObject)
      v
      (./semigroupal object v cat)
