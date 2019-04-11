# [Caterwaul](http://github.com/sellout/caterwaul)

Wailing into the primordial ooze of category theory.

This requires either Dhall 1.18 or 1.20+ (it will not work on Dhall 1.19).

## Overview

Fundamentally, there are very few things here

- `Adjunction`
- `Semigroup`, `Monoid`, `Group`, and `Semilattice` (with commutative and ordered variants)
- `Functor`
- left and right Kan extensions (`Lan` and `Ran`)
- some basic types (`Compose`, `Either`, `Identity`, `Tuple`) to be able to model particular monoids

Many of the other types are defined as specializations

- `Functor` → `Bifunctor`, `Endofunctor`, `Profunctor`
- `Group` → `Groupoid`
- `Monoid` → `Category`, `Comonad`, `Comonoid`, `Monad`
- `Semigroup` → `Cosemigroup`, `Semigroupoid`
- `Lan` → `Day`, `Density`, `Coyoneda`
- `Ran` → `Codensity`, `Yoneda`

or ways of combining other types

- `Bimonoid` (and `Bimonad`),
- `Duoid`,
- `Lattice,`
- `Functor/Monoidal`,
- `Semiring`, `Rig`, `Ring`, and `Field`.

As much as possible, these are defined at multiple levels. E.g.
- `./Monoid/Type` is a kind-polymorphic monoid at the type level, where instances are defined for specific types (or type constructors), like `0`/`+` or `Some`/`join`;
- `./Monoid/Kind` is kind-level monoid, where instances are defined for specific kinds, like `{}`/`./Tuple/Type` for the kind `Type`; and
- `kProduct` at the top of most files is a sort-level monoid (well, a semigroup, since we have no unit kind), which is usually `./Tuple/Kind`, but may also be `./Either/Kind`.

Things at the sort level can’t be “grouped” (or even bound) in any way, so we talk about `kCat` forming a sort-level monoidal category (with `Kind` as the objects and an undefinable unit), but can’t organize them any better than that.

As that last sentence implies, everything lives within a “`Kind`-level” monoidal category, which you can think of as an approximation of **Cat**. The object of the category is implicitly `Kind`, but we can’t specify that explicitly. We also have no way of representing common monoidal identities at the Kind-level (e.g., `{}` and `<>` have no `Kind`-level equivalent), so there is no `cat.unit` for the monoidal category. It actually forms a rig category, with `./Tuple/Kind` and `./Either/Kind`, but mostly you just see a monoidal view of it.

We also use a `v…` convention when talking about enriched categories – like `vObject`, `vArrow`, etc. At least so far, the enriching category is always **Set**, so `vObject = Type` and `v = ./Category/Set`, but the convention helps us keep track of _why_ we’re using those types.

## Documentation

Types as documentation: https://sellout.github.io/caterwaul/ (there actually are _some_ docs there, but pretty minimal at the moment.)
