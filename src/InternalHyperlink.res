/** @see https://docx.js.org/api/classes/InternalHyperlink.html */
type options = {
  anchor: string,
  children: array<ParagraphChild.t>,
}

@module("docx") @new
external create: options => ParagraphChild.t = "InternalHyperlink"
