let kArrow =
      ./../../function/Kind sha256:0b6372c593badac5fe880699fd1cf19dfba07c62fab935a8bad96915866f466e

let kProduct =
      ./../../Tuple/Kind sha256:03e1c52890f0cda1a2181cd3eb045d5344fc7c907fcbf836736c0e3222c5ffd8

let vObject = Type

let Category =
      ./../Kind sha256:41ea86fd34226d0dc3c87cc12f9ce042e3b54e7eb77b451cdbfb085ba3f66916
      kArrow
      kProduct

let MonoidalCategory =
      ./../Monoidal/Kind sha256:f05d8665b46c686b6b930ad18aad6e1daa8c7a9c104d7bbeec947389d4d83e48
      kArrow
      kProduct

in    λ ( cObject
        : Kind
        )
    → λ(dObject : Kind)
    → λ(v : MonoidalCategory Type vObject)
    → λ(c : Category vObject cObject)
    → λ(d : Category vObject dObject)
    → ./../types.dhall sha256:ba6db6fca0c9310f9067aca5d5aff33b188942b1e765454d261aa08348b47810
      { _1 : cObject, _2 : dObject }
      v
      ( ./Kind sha256:20030b03f756a7b17052c2e86274f3d5fc9e6ae11d0f5e8867c7517696c3e33a
        cObject
        dObject
        c
        d
      )
