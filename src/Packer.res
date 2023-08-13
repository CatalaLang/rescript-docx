type prettifyType =
  | @as("") None
  | @as("  ") With2Blanks
  | @as("    ") With4Blanks
  | @as("\t") WithTab

@unwrap
type prettify = Bool(bool) | Pretty(prettifyType)

@module("docx") @scope("Packer")
external toString: (Document.t, ~prettify: prettify=?) => promise<string> = "toString"

@module("docx") @scope("Packer")
external toBase64String: (Document.t, ~prettify: prettify=?) => promise<string> = "toBase64String"

@module("docx") @scope("Packer")
external toStream: (Document.t, ~prettify: prettify=?) => promise<'stream> = "toStream"

@module("docx") @scope("Packer")
external toBlob: (Document.t, ~prettify: prettify=?) => promise<'blob> = "toBlob"

@module("docx") @scope("Packer")
external toBuffer: (Document.t, ~prettify: prettify=?) => promise<'buffer> = "toBuffer"
