/** @see https://docx.js.org/api/classes/PositionalTab.html */
type option = {
  alignment: [#left | #center | #right],
  relativeTo: [#margin | #indent],
  leader: Docx__LeaderType.t,
}

@genType.import("docx") @new
external make: option => Docx__TextRun.children = "PositionalTab"
