/** @see https://docx.js.org/api/classes/Bookmark.html */
type options = {
  id: string,
  children: array<Docx__ParagraphChild.t>,
}

@genType.import("docx") @new
external make: options => Docx__ParagraphChild.t = "Bookmark"
