let kCat =
      ./../../Category/Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let vObject = Type

let object = Type

let cat =
      ./../../Category/Monoidal/Cartesian/extractMonoidal sha256:25afdf2818357f9c4b9dac6652b82e730472c389a634f8417a6014d39c7cddc0
      kCat
      vObject
      object
      ./../../Category/Set/monoidal/cartesian sha256:48e8bea552638624a62335eab92acd1e0a04c28e8a0d8fe1c8974565065a9576

let category =
      ./../../Category/Set/category sha256:9d632babf74a31ec2425b5d25bf8627d2ae5ab22605a5168b33f84ece51d2f2e

let bifunctor =
      ./../../Tuple/functor/pair sha256:df09688fed0657c884f1faee5402efbcfafc50f8076b2245c8cbf587c3b013da

in    λ ( m
        : object
        )
    → λ ( field
        : ./Type sha256:7ac1525deb156a2ce22d96f3958e4add809c3c7d763956ff92c563a5b8a843ff
          m
        )
    →   { eq =
            field.additive.eq
        , partialLE =
            field.additive.partialLE
        }
      ∧ ./../terms.dhall sha256:78cdc5a75c0e5c2a8ae0f43f4e021dfae382d5de7e3b09f2971792f1bd7e4da6
        object
        cat
        category
        bifunctor
        m
        ( ./extractField sha256:4715b3c94dd1b72bef0a7125a909e5680720a2d1bafe413c40637493331f407a
          m
          field
        )
