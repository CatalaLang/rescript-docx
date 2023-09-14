/** @see https://docx.js.org/api/classes/PositionalTab.html */
type option = {
  alignment: [#left | #center | #rigth],
  relativeTo: [#margin | #indent],
  leader: [#none | #dot | #hyphen | #underscore | #middleDot],
}

@module("docx") @new
external make: option => TextRun.children = "PositionalTab"
