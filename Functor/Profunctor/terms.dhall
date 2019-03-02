let kArrow = ./../../Function/Kind

let kProduct = ./../../Tuple/Kind

in    λ(cObject : Kind)
    → λ(cArrow : kArrow (kProduct cObject cObject) Type)
    → λ(cCategory : ./../../Category/Type cObject cArrow)
    → λ(dObject : Kind)
    → λ(dArrow : kArrow (kProduct dObject dObject) Type)
    → λ(dCategory : ./../../Category/Type dObject dArrow)
    → ./../Bifunctor/terms.dhall
      dObject
      (./../../Category/Op/Type dObject dArrow)
      (./../../Category/Op/category dObject dArrow dCategory)
      cObject
      cArrow
      cCategory
      Type
      ./../../Function/Type
