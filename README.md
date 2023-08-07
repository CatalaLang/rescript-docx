# rescrip<div align="center">
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

## Binding convention import

For the binding, several conventions has been used:

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
