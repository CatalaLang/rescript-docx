/** @see https://docx.js.org/api/interfaces/IRunOptions.html#children */
type children
external string: string => children = "%identity"
external pageNumber: Docx__PageNumber.t => children = "%identity"

type underline = {
  color?: string,
  @as("type")
  type_: [
    | #dash
    | #dashDotDotHeavy
    | #dashLong
    | #dashLongHeavy
    | #dotDash
    | #dotDotDash
    | #dotted
    | #dottedHeavy
    | #double
    | #single
    | #thick
    | #wave
    | #wavyDouble
    | #wavyHeavy
    | #words
  ],
}
/** @see https://docx.js.org/api/interfaces/IRunOptions.html */
type options = {
  text?: string,
  allCaps?: bool,
  bold?: bool,
  break?: int,
  italics?: bool,
  font?: string,
  /** @see https://docx.js.org/api/interfaces/IRunOptions.html#size */
  size?: string,
  style?: string,
  color?: string,
  underline?: underline,
  // NOTE(@EmileRolley): little hack to accept polymorphic array
  children?: array<children>,
}

@genType.import("docx") @new
external _make: @unwrap [#opt(options) | #str(string)] => Docx__ParagraphChild.t = "TextRun"

let make = str => _make(#str(str))
let makeWith = opt => _make(#opt(opt))
