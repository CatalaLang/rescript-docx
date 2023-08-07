<div align="center">
  <h3 align="center">
	<big><code>rescript-docx</code></big>
  </h3>
  <p align="center">
   <a href="https://github.com/EmileRolley/rescript-docx/issues">Report Bug</a>
   •
   <a href="https://incubateur-ademe.github.io/publicodes-tools/">API docs</a>
   •
   <a href="https://github.com/EmileRolley/rescript-docx/blob/master/CONTRIBUTING.md">Contribute</a>
   •
   <a href="https://docx.js.org">docx.js</a>
  </p>

![CI][ci-link] ![NPM][npm-link]

  A ReScript wrapper for the [`docx`](https://docx.js.org/) JS/TS library.

</div>

## Usage

```
yarn add -D rescript-docx
```

## API coverage

See which features are covered in the dedicated [doc file](https://github.com/EmileRolley/rescript-docx/blob/main/docs/supported-features.md).

## Binding convention import

For the binding, several conventions has been used:

### Enums

Enums are implemented as modules with a `t` type and functions with the name of
the enum in lowercase.

```typescript
// In TypeScript
enum AlignmentType = {
    START = "start",
    CENTER = "center",
    ...
}
```

```rescript
// Corresponding AlignmentType.resi file
type t
let start: t
let center: t
...
```

### Polymorphic constructors 

Each `docx` classes has its corresponding ReScript module.
> For example the `Paragraph` classes has its corresponding `Parapraph` module in the
`Paragraph.res` file.

To emulate polymorphic constructors call, the following convention has been taken:

```typescript
// In TypeScript
const p = new Paragraph("Lorem ipsum")
const q = new Paragraph({
    text: "Lorem ipsum",
    heading: HeadingLevel.HEADING_1,
})
```

```rescript
// In ReScript
let p = Paragraph.make("Lorem Ipsum")
let q = Paragraph.make'({
    text: "Lorem ipsum",
    heading: #Heading1,
})
```

### Inline variant types

TypeScript variant types are modelized with an [unboxed ReScript
variant](https://rescript-lang.org/docs/manual/latest/unboxed):

```typescript
// TypeScript variant
type t = {
    value: number | string
}
```

```rescript
// In ReScript
@unboxed
type numberOrString = Number(float) | String(string)

type t = {
    value: numberOrString
}
```
