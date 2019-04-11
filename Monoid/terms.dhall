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
    → λ ( monoid
        : ./Type sha256:7ec2cac4a8bda85f6010a0a00ab0da221bcc0ea295863c1c6259c5aa14878500
          object
          cat
          m
        )
    →   monoid.{ identity
               }
      ∧ ./../Semigroup/terms.dhall sha256:89ad5c87b26fdac8fdb2de9d5c49cef5e178a503380ce3237f341edc8a8370ea
        object
        ( ./../Category/Monoidal/extractSemigroupal sha256:8fc720d6416e099e6943afa14eefa7bb86489af66eea29c4d5c9e11eab9c6808
          kCat
          vObject
          object
          cat
        )
        m
        ( ./extractSemigroup sha256:dd1d77224129bcf8e11eb1e927b2a6d911e0b1147525ac902eacd7ead31e96ae
          object
          cat
          m
          monoid
        )
