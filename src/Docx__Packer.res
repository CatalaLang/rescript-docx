type prettifyType = [
  | @as("") #none
  | @as("  ") #with2Blanks
  | @as("    ") #with4Blanks
  | @as("\t") #withTab
]

@unwrap
type prettify = Bool(bool) | Pretty(prettifyType)

@genType.import(("docx", "Packer.toString"))
external toString: (Docx__Document.t, ~prettify: prettify=?) => promise<string> = "toString"

@genType.import(("docx", "Packer.toBase64String"))
external toBase64String: (Docx__Document.t, ~prettify: prettify=?) => promise<string> =
  "toBase64String"

@genType.import(("docx", "Packer.toStream"))
external toStream: (Docx__Document.t, ~prettify: prettify=?) => promise<'stream> = "toStream"

@genType.import(("docx", "Packer.toBlob"))
external toBlob: (Docx__Document.t, ~prettify: prettify=?) => promise<'blob> = "toBlob"

@genType.import(("docx", "Packer.toBuffer"))
external toBuffer: (Docx__Document.t, ~prettify: prettify=?) => promise<'buffer> = "toBuffer"
