let kCat =
      ./../Category/Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let vObject = Type

in    λ ( object
        : Kind
        )
    → λ ( cat
        : ./../Category/Semigroupal/Kind sha256:e76288137b213da343b09207c0c8a72bd551a21712d3d7f2089342e1968ba699
          kCat
          vObject
          object
        )
    → λ(m : object)
    → λ ( semigroup
        : ./Type sha256:9c2ee52a412e914e1716a0b3210be32af44993029f703a15b183a3b0cce9002c
          object
          cat
          m
        )
    → semigroup.{ op }
