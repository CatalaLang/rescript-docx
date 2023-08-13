@unwrap
type t = P(Paragraph.t) | T(Table.t)

let p = string => P(Paragraph.make(string))
let p' = options => P(Paragraph.make'(options))
