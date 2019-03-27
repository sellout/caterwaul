let kArrow =
      ./../../function/Kind sha256:0b6372c593badac5fe880699fd1cf19dfba07c62fab935a8bad96915866f466e

let kProduct =
      ./../../Tuple/Kind sha256:03e1c52890f0cda1a2181cd3eb045d5344fc7c907fcbf836736c0e3222c5ffd8

let vObject = Type

let Category =
      ./../Kind sha256:41ea86fd34226d0dc3c87cc12f9ce042e3b54e7eb77b451cdbfb085ba3f66916
      kArrow
      kProduct

let MonoidalCategory = ./../Monoidal/Kind kArrow kProduct

in    λ(cObject : Kind)
    → λ(dObject : Kind)
    → λ(v : MonoidalCategory Type vObject)
    → λ(c : Category vObject cObject)
    → λ(d : Category vObject dObject)
    → ./../types.dhall
      { _1 : cObject, _2 : dObject }
      v
      (./Kind cObject dObject c d)
