let kCat =
      ./../Category/Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let vObject = Type

in    λ ( object
        : Kind
        )
    → λ ( cat
        : ./../Category/Semigroupal/Kind sha256:5d216a5d95721e6086fab2cd85f039d15a9d06b8a986ef170823a57a0c0d02d6
          kCat
          vObject
          object
        )
    → λ(m : object)
    → λ ( semigroup
        : ./Type sha256:c141f4fb3c393804963be5ed72ffe07f5a7e90f588ead9065235240815a80c88
          object
          cat
          m
        )
    → semigroup.{ product }
