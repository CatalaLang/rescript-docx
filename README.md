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

<!-- ![CI][ci-link] ![NPM][npm-link] -->

  A ReScript wrapper for the [`docx`](https://docx.js.org/) JS/TS library.

</div>

## Table Of Contents

<!-- vim-markdown-toc Marked -->

* [Usage](#usage)
    * [Examples](#examples)
* [API coverage](#api-coverage)
* [Binding conventions](#binding-conventions)
    * [Primitives](#primitives)
    * [Enums](#enums)
    * [Polymorphic constructors](#polymorphic-constructors)
    * [Inline variant types](#inline-variant-types)
    * [Reserved keywords](#reserved-keywords)
    * [Interface inheritance](#interface-inheritance)

<!-- vim-markdown-toc -->

## Usage

```
yarn add -D rescript-docx
```

### Examples

Some examples are available in
[`examples/`](https://github.com/EmileRolley/rescript-docx/blob/main/examples).
To run them simply:

```bash
# Compile the project with the dependencies
yarn && yarn build

# Run the compiled JS file with Node
npx node examples/<fileName>.bs.js

# The result is stored in the root with the corresponding name: <fileName>.docx
```

## API coverage

See which features are covered in the dedicated [doc file](https://github.com/EmileRolley/rescript-docx/blob/main/docs/supported-features.md).

* ✅ `Document`
* ✅ `Headers`
* ✅ `Packers`
* ✅ `Paragraph`
* ❌ `Comments`
* ❌ `Footnotes`
* ✅ `Hyperlinks`
* ✅ `PageReference`
* ❌ `Images`
* ❌ `Math`
* ❌ `Numbering`
* 🚧 `Table`
    * ✅ `TableCell`   
    * ✅ `TableRow`   
    * ❌ `TableColumn`
* ❌ `TableOfContents`
* ❌ `Tabs`
* 🚧 `TextRun`

## Binding conventions

For the binding, several conventions has been used:

### Primitives

By default JavaScript `number` are converted to `float`, but if it's expected
to be integers then to `int`.

### Enums

> TODO: choose between this implementation or using polymorphic variants

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

> 🔜 In the incoming ReScript 11.0, this could be done cleaner by using
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

TypeScript inline variant types are encoded in a dedicated module in `Util.Types` as:

```typescript
// TypeScript variant
type t = {
    value: number | string
}
```

```rescript
// In ReScript
open Util

type t = { value: Types.NumberOrString.t }

let float: t = { value: Types.NumberOrString.fromFloat(10.0) }

let string: t = { value: Types.NumberOrString.fromString("Hello") }
```

> 🔜 In the incoming ReScript 11, this could be done more simply by using the new
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
