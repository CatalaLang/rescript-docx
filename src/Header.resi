@unwrap
type paragraphOrTable = Paragraph(Docx.Paragraph.t) | Table(Docx.Table.t)

/** @see https://docx.js.org/api/interfaces/IHeaderOptions.html */
type header_options = {children: array<paragraphOrTable>}

/** @see https://docx.js.org/api/classes/Header.html */
module Header: {
  type t
  let make: header_options => t
}

/** @see https://docx.js.org/api/classes/Footer.html */
module Footer: {
  type t
  let make: header_options => t
}
