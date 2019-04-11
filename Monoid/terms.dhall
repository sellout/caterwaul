let kCat =
      ./../Category/Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let vObject = Type

in    λ ( object
        : Kind
        )
    → λ ( cat
        : ./../Category/Monoidal/Kind sha256:8e77a076f4c2f6e1d0ad07cfec37dfd04782e1a0a7e98a72a305233f69c494ca
          kCat
          vObject
          object
        )
    → λ(m : object)
    → λ ( monoid
        : ./Type sha256:f834d5fd5b1d9a58809d316e6660f485b2e2d342bf833dcfda8034634e3a8f76
          object
          cat
          m
        )
    →   monoid.{ unit
               }
      ∧ ./../Semigroup/terms.dhall sha256:fc6f0974b29845c00a39f78ec6f724af21c4f015fff8d7151e9ebc486c24f831
        object
        ( ./../Category/Monoidal/extractSemigroupal sha256:aae542624e23cbcccf4d3331b84d3ff664b425e0e186fead04853f01637a1e9c
          kCat
          vObject
          object
          cat
        )
        m
        ( ./extractSemigroup sha256:9b762677815796b68ea55b35e00afb063cf92285a4e3b4fc16cca8df7f1fe0a0
          object
          cat
          m
          monoid
        )
