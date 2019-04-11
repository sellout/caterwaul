let kCat =
      ./../Category/Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let vObject = Type

in    λ ( object
        : Kind
        )
    → λ ( cat
        : ./../Category/Monoidal/Kind sha256:6eb37e632903173c5ec1600564aa614697c4b58719773c4e4c66a76f095d1636
          kCat
          vObject
          object
        )
    → λ(m : object)
    → λ ( semiring
        : ./Type sha256:596494c7f410b819e5b60a9246dee8dbd9d24cb8603477c81830a34809c45a91
          object
          cat
          m
        )
    → { add =
          semiring.additive.op
      , multiply =
          semiring.multiplicative.op
      , one =
          semiring.multiplicative.identity
      }
