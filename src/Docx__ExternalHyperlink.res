/** @see https://docx.js.org/api/classes/ExternalHyperlink.html */
type options = {
  link: string,
  children: array<Docx__ParagraphChild.t>,
}

@genType.import("docx") @new
external make: options => Docx__ParagraphChild.t = "ExternalHyperlink"
