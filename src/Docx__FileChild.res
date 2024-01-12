@genType
type t

/** Coerces a paragraph to a [FileChild.t] */
external fromParagraph: Docx__Util.Types.paragraph => t = "%identity"

/** Coerces a table to a [FileChild.t] */
external fromTable: Docx__Util.Types.table => t = "%identity"

/** Creates a new [Paragraph.t] */
let p = string => Docx__Paragraph.make(string)->fromParagraph

/** Creates a new [Paragraph.t] with options */
let p' = options => Docx__Paragraph.makeWith(options)->fromParagraph
