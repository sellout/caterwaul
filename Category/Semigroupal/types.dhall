let kCat =
      ./../Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let vObject = Type

in    λ ( object
        : Kind
        )
    → λ ( v
        : ./../Monoidal/Kind sha256:6eb37e632903173c5ec1600564aa614697c4b58719773c4e4c66a76f095d1636
          kCat
          Type
          vObject
        )
    → λ ( cat
        : ./Kind sha256:e76288137b213da343b09207c0c8a72bd551a21712d3d7f2089342e1968ba699
          kCat
          vObject
          object
        )
    →   { Arrow =
            ./../../Arrow/Type sha256:759b21e206149156890a66e451068ab35e69fd0bf99ad580084c390022c48008
            object
            v
            cat
        , Semigroup =
            ./../../Semigroup/Type sha256:9c2ee52a412e914e1716a0b3210be32af44993029f703a15b183a3b0cce9002c
            object
            cat
        }
      ∧ ./../types.dhall sha256:e97633bf915d1cd417dc07321103352ab99dcf3556af52ae4c2b9c98d1e26921
        object
        v
        ( ./extractCategory sha256:6f1f56b9a2979d9d15d3f85459a5869f8122619c2dbd3b7ba0d982c6de320222
          kCat
          vObject
          object
          cat
        )
