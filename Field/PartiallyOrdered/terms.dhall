let kCat = ./../../Category/Cat/semigroupal

let vObject = Type

let object = Type

let cat =
      ./../../Category/Monoidal/Cartesian/extractMonoidal
        kCat
        vObject
        object
        ./../../Category/Set/monoidal/cartesian

let category = ./../../Category/Set/category/monoidal

in    λ(m : object)
    → λ(field : ./Type m)
    →   { eq = field.additive.eq, le = field.additive.le }
      ∧ ./../terms.dhall object cat category m (./extractField m field)
