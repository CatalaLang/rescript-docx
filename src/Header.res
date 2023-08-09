@unwrap
type paragraphOrTable = Paragraph(Paragraph.t) | Table(Table.t)

type header_options = {children: array<paragraphOrTable>}

module Header = {
  type t

  @module("docx") @new
  external make: header_options => t = "Header"
}

module Footer = {
  type t

  @module("docx") @new
  external make: header_options => t = "Footer"
}
