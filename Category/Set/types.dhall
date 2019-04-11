let cat =
      ./../Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let vObject = Type

in    λ ( v
        : ./../Monoidal/Kind sha256:96b5eca83adb85b7bc744975b530210da2aec17c9c70b45d3b241ccfdb47e772
          cat
          Type
          vObject
        )
    → let Set =
            ./../Monoidal/Cartesian/extractMonoidal sha256:0fcc63fc837459ca2866d31c5b11400b56fcb8f7d1846b774e98b47995c1879a
            cat
            vObject
            Type
            ./monoidal/cartesian sha256:b6efbdc0effbca1bc7427c980f2579012808494a8195fdf9fb52aea37ae91116
      
      in    { Eq =
                ./../../Eq/Type sha256:16ec0250d1cd6f2d48bb5fe37d46d1db9ef640657c7b247b8d5be1aca30259b1
            , InternalHomFunctor =
                ./../../Functor/InternalHom sha256:e6449b44b9d691eb4a95fdff9fb88a29d0d562209b5245bf233c73cbbbe8ad35
                v
            , OrderedField =
                ./../../Field/Ordered/Type sha256:6aaeace90df1f726ff530ea9decd9d086288a32a1db3616515105dc658d78bf0
            , OrderedGroup =
                ./../../Group/Ordered/Type sha256:eca0fcdc9d9d4ef5327269dd6312ed1eb03b3035b683cc72cd68f9a198bdb0fe
            , OrderedRing =
                ./../../Ring/Ordered/Type sha256:e62f4362db38b5c5317218c80b1cc1b3aee8830532894c7f35d2aad72a60d17e
            , PartiallyOrderedField =
                ./../../Field/PartiallyOrdered/Type sha256:601820c45e01df03e968188ed24ec0e86daea5c1a5b8213268258f8216e448a4
            , PartiallyOrderedGroup =
                ./../../Group/PartiallyOrdered/Type sha256:181f3ed46722bb46e78795924c630cb78a60b2b56dd827da4ef1099064ea3616
            , PartiallyOrderedRing =
                ./../../Ring/PartiallyOrdered/Type sha256:d8d9beaac8e30ac8062aadbcb25aae2f7e5a0612743d6f30151444159860501a
            }
          ∧ ./../Monoidal/types.dhall sha256:4653eedf08a61b1daf2be9e508a3ce3e9a546fb41ec0c69c62b855355463082d
            Type
            v
            Set
