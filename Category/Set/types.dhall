let cat =
      ./../Cat/semigroupal sha256:de5b05c9640ea3ca0ee586c7102a982db79d3c0f0c92230cb2df19c7b986b513

let vObject = Type

in    λ ( v
        : ./../Monoidal/Kind sha256:6eb37e632903173c5ec1600564aa614697c4b58719773c4e4c66a76f095d1636
          cat
          Type
          vObject
        )
    → let Set =
            ./../Monoidal/Cartesian/extractMonoidal sha256:25afdf2818357f9c4b9dac6652b82e730472c389a634f8417a6014d39c7cddc0
            cat
            vObject
            Type
            ./monoidal/cartesian sha256:48e8bea552638624a62335eab92acd1e0a04c28e8a0d8fe1c8974565065a9576
      
      in    { Eq =
                ./../../Eq/Type sha256:16ec0250d1cd6f2d48bb5fe37d46d1db9ef640657c7b247b8d5be1aca30259b1
            , InternalHomFunctor =
                ./../../Functor/InternalHom sha256:005702dafa5e49ecf468070f1d9fca9c8755bafe2612960acdd55c705c93683e
                v
            , OrderedField =
                ./../../Field/Ordered/Type sha256:c02270f3266abfba75c22182ee2f9e499d764093bed9178afe62c62feea4dc48
            , OrderedGroup =
                ./../../Group/Ordered/Type sha256:8b6d9aadc23c1f247b44f71cce87b88cd74506427efef577bf730504d1213202
            , OrderedRing =
                ./../../Ring/Ordered/Type sha256:cf0f581180003e1c9fe81feed6be2ce18f665f609ee85793f3c80d9a47728c59
            , PartiallyOrderedField =
                ./../../Field/PartiallyOrdered/Type sha256:7ac1525deb156a2ce22d96f3958e4add809c3c7d763956ff92c563a5b8a843ff
            , PartiallyOrderedGroup =
                ./../../Group/PartiallyOrdered/Type sha256:74347464c97f0377694a6b16680573fd88a8ee37aa78497228bae5b803c73670
            , PartiallyOrderedRing =
                ./../../Ring/PartiallyOrdered/Type sha256:6e4f70e5aa195671501823258a8be3a055339da6869b466c0efbf16ca3cabefb
            }
          ∧ ./../Monoidal/types.dhall sha256:ca1e0c6da2b24692da9baefbf46acee3120f8fd43c8b6e31709ab89199ee8a60
            Type
            v
            Set
