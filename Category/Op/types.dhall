let kCat =
      ./../Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let MonoidalCategory =
      ./../Monoidal/Kind sha256:8e77a076f4c2f6e1d0ad07cfec37dfd04782e1a0a7e98a72a305233f69c494ca
      kCat

let vObject = Type

in    λ ( object
        : Kind
        )
    → λ(v : MonoidalCategory Type vObject)
    → λ(cat : MonoidalCategory vObject object)
    → ./../Monoidal/types.dhall sha256:2b3c5b6a3d13a4485c8b57962103a7e3fa58ce2aee41173b7b6c958ef7cee4e3
      object
      v
      ( ./monoidal sha256:f6ced279f29b164e41b7e3d82a74c4052515454b14bf37e59e214ec1b8899635
        vObject
        object
        cat
      )
