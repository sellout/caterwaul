let kArrow =
      ./../../Function/Kind sha256:0b6372c593badac5fe880699fd1cf19dfba07c62fab935a8bad96915866f466e

let kProduct =
      ./../../Tuple/Kind sha256:03e1c52890f0cda1a2181cd3eb045d5344fc7c907fcbf836736c0e3222c5ffd8

in    λ ( cObject
        : Kind
        )
    → λ(cArrow : kArrow (kProduct cObject cObject) Type)
    → λ ( cCategory
        : ./../../Category/Type sha256:56874495587bd8bf58b702382562e4aed91603b64a2d6893413c72d5bf265596
          cObject
          cArrow
        )
    → λ(dObject : Kind)
    → λ(dArrow : kArrow (kProduct dObject dObject) Type)
    → λ ( dCategory
        : ./../../Category/Type sha256:56874495587bd8bf58b702382562e4aed91603b64a2d6893413c72d5bf265596
          dObject
          dArrow
        )
    → λ(eObject : Kind)
    → λ(eArrow : kArrow (kProduct eObject eObject) Type)
    → λ(f : kArrow (kProduct cObject dObject) eObject)
    → λ ( functor
        : ./Type sha256:941c217fa6ee86da9597e1a86270a67bb1c9d62fe62f6d786fe6454a05fd72fa
          cObject
          dObject
          eObject
          cArrow
          dArrow
          eArrow
          f
        )
    → let extractFirstFunctor =
            ./impliedFirstFunctor sha256:aa254bc18381d0f1688dc845fe99f8802f27b902d6f7cd51a25d65eb4afdb1d5
            cObject
            cArrow
            dObject
            dArrow
            dCategory
            eObject
            eArrow
            f
            functor
      
      let extractSecondFunctor =
            ./impliedSecondFunctor sha256:2a8c40efa835aa1a550c19aa97151f5e29de03f59bad6add6d10872a5e97f540
            cObject
            cArrow
            cCategory
            dObject
            dArrow
            eObject
            eArrow
            f
            functor
      
      in    { first =
                λ(a : dObject) → (extractFirstFunctor a).map
            , second =
                λ(a : cObject) → (extractSecondFunctor a).map
            , extractFirstFunctor =
                extractFirstFunctor
            , extractSecondFunctor =
                extractSecondFunctor
            }
          ∧ functor
