/**
* Represents the [FileChild] classes.
*/
type t = P(Paragraph.t) | T(Table.t) /* | Toc(Toc.t) */

/** Creates a new [Paragraph.t] */
let p: string => t

/** Creates a new [Paragraph.t] with options */
let p': Paragraph.options => t
