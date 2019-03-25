let kArrow = ./../Function/Kind

let kProduct = ./../Tuple/Kind

let vObject = Type

in    λ(object : Kind)
    → λ(cat : ./../Category/Monoidal/Kind kArrow kProduct vObject object)
    → λ(m : object)
    → λ(rig : ./Type object cat m)
    →   { zero = rig.additive.identity }
      ∧ ./../Semiring/terms.dhall
        object
        cat
        m
        (./extractSemiring object cat m rig)
