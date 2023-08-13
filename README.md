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

* [x] `Document`
* [ ] `Paragraph`
* [ ] `Text`
* [ ] `Images`
* [ ] `Hyperlinks`
* [ ] `Numbering`
* [ ] `Table`
    * [x] `Column`
* [ ] `Tabs`
* [ ] `TableOfContents`
* [ ] `Math`
* [ ] `Comments`
* [ ] `Footnotes`
* [x] `Packers`

## Binding convention import

For the binding, several conventions has been used:

### Primitives

By default JavaScript `number` are converted to `float`, but if it's expected
to be integers then to `int`.

### Enums

Enums are implemented as modules with a `t` type and functions with the name of
the enum in lowercase.

```typescript
// In TypeScript
enum AlignmentType = {
    START = "start",
    CENTER = "center",
    NUM_TAB = "numTab",
    ...
}
```

```rescript
// Corresponding AlignmentType.resi file
type t
let start: t
let center: t
let num_tab: t
...
```

> 🔜 In the incoming ReScript 11.0, this could be done more cleanly by using
> the new [tagged
> variants](https://rescript-lang.org/blog/improving-interop#binding-to-typescript-enums).

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

TypeScript inline variant types are encoded with an [unwrapped ReScript
variant](https://rescript-lang.org/docs/manual/latest/bind-to-js-function#trick-2-polymorphic-variant--unwrap):

```typescript
// TypeScript variant
type t = {
    value: number | string
}
```

```rescript
// In ReScript
@unwrap
type numberOrString = Number(float) | String(string)

type t = {
    value: numberOrString
}
```

> 🔜 In  incoming ReScript 11, this could be done more cleanly by using the new
> [untagged
> variants](https://rescript-lang.org/blog/improving-interop#untagged-variants).

### Reserved keywords

Some used JavaScript attributes are reserved keywords in ReScript, consequently, they are
postfixed by `_`.

For example, the attribute `type` is `type_`.

### Interface inheritance

> 🔜 In the incoming ReScript 11.0, using [record type
> spread](https://rescript-lang.org/blog/enhanced-ergonomics-for-record-types#record-type-spread)
> will allows to factorizes interface inheritance.

