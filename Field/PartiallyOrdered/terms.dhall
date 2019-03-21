let object = Type

let cat =
      ./../../Category/Set/monoidal/cartesian sha256:b3c97e385d62b718ab11e540a98141cb81b89db0d7c1115ec11b330c596dcf01

let category =
      ./../../Function/category sha256:de245a327ab65ee050d8adfe6271621e83ceced0333a799c37bef940a119696f

let bifunctor =
      ./../../Tuple/functor/pair sha256:612e6d3a06fc459af2b2b08444605f220a2cadf6b854d92d191f06d177b442dd

in    λ ( m
        : object
        )
    → λ ( field
        : ./Type sha256:b15fa73b5506bfaab6c40d363c176ccf478338af0f99682dcc61377af28f3b31
          m
        )
    →   { eq =
            field.additive.eq
        , partialLE =
            field.additive.partialLE
        }
      ∧ ./../terms.dhall sha256:00ddb589219f0e5f52110af891df30fd0c22f7d60e8f50079a7915facbb6fd37
        object
        cat
        category
        bifunctor
        m
        ( ./extractField sha256:c1c759613abc81f1e192e406e2da644513ef8e18a3400476c4b83baee5760f5d
          m
          field
        )
