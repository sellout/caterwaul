# Caterwaul

Wailing into the primordial ooze of category theory.

This requires either Dhall 1.18 or 1.20+ (it will not work on Dhall 1.19).

## Documentation

Types as documentation: https://sellout.github.io/caterwaul/ (there actually are _some_ docs there, but pretty minimal at the moment.)

## Contributing

Here are some helpful hints to nativigating the code base.

Everything lives within a “`Kind`-level” monoidal category, which you can think of as an approximation of **Cat**. This is represented by the names `kArrow` and `kProduct`. The object of the category is implicitly `Kind`, but we can’t specify that explicitly. We also have no way of representing common monoidal identities at the Kind-level (e.g., `{}` and `<>` have no `Kind`-level equivalent), so there is no `kIdentity` for the monoidal category.
