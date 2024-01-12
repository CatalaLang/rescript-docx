/** @see https://docx.js.org/api/classes/InternalHyperlink.html */
type options = {
  anchor: string,
  children: array<Docx__ParagraphChild.t>,
}

@genType.import("docx") @new
external make: options => Docx__ParagraphChild.t = "InternalHyperlink"
