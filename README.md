# Caterwaul

[![built with garnix](https://img.shields.io/endpoint?url=https%3A%2F%2Fgarnix.io%2Fapi%2Fbadges%2Fsellout%2Fcaterwaul)](https://garnix.io/repo/sellout/caterwaul)
[![Nix CI](https://nix-ci.com/badge/gh:sellout:caterwaul)](https://nix-ci.com/gh:sellout:caterwaul)
[![Project Manager](https://img.shields.io/badge/%20-Project%20Manager-%235277C3?logo=nixos&labelColor=%23cccccc)](https://sellout.github.io/project-manager/)

Wailing into the primordial ooze of category theory

Attempting to push the limits of Dhall’s abstractions.

This requires either Dhall 1.18 or 1.20+ (it will not work on Dhall 1.19).

## overview

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

## documentation

API docs are on [GitHub Pages](https://sellout.github.io/caterwaul).

## development environment

We recommend the following steps to make working in this repository as easy as possible.

### `direnv allow`

This command ensures that any work you do within this repository happens within a consistent reproducible environment. That environment provides various debugging tools, etc. When you leave this directory, you will leave that environment behind, so it doesn’t impact anything else on your system.

### `git config --local include.path ../.cache/git/config`

This will apply our repository-specific Git configuration to `git` commands run against this repository. It’s lightweight (you should definitely look at it before applying this command) – it does things like telling `git blame` to ignore formatting-only commits.

## building & development

Especially if you are unfamiliar with the dhall ecosystem, there is a Nix build (both with and without a flake). If you are unfamiliar with Nix, [Nix adjacent](...) can help you get things working in the shortest time and least effort possible.

### if you have `nix` installed

`nix build` will build and test the project fully.

`nix develop` will put you into an environment where the traditional build tooling works. If you also have `direnv` installed, then you should automatically be in that environment when you're in a directory in this project.

## versioning

In the absolute, almost every change is a breaking change. This section describes how we mitigate that to offer minor updates and revisions.

## comparisons

Other projects similar to this one, and how they differ.
