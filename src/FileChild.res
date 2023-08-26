type t

external fromParagraph: Paragraph.t => t = "%identity"

let p = string => Paragraph.make(string)->fromParagraph
let p' = options => Paragraph.make'(options)->fromParagraph
