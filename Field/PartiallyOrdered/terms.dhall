let object = Type

let cat =
      ./../../Category/Set/monoidal/cartesian sha256:b017581ee66eec1995d52c80d527598dd5614254bf7217768c035c3a5e2103bd

let category =
      ./../../Category/Set/category sha256:de245a327ab65ee050d8adfe6271621e83ceced0333a799c37bef940a119696f

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
      ∧ ./../terms.dhall sha256:c74531ddd8ae479cde527387f021c15874f8459d7f8b67825dc9dc5634dc3111
        object
        cat
        category
        bifunctor
        m
        ( ./extractField sha256:c1c759613abc81f1e192e406e2da644513ef8e18a3400476c4b83baee5760f5d
          m
          field
        )
