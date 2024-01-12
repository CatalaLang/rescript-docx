/** @see https://docx.js.org/api/variables/VerticalMergeType.html */
@genType
type t = [
  | /** Cell that is merged with upper one. */ #continue
  | /** Cell that is starting the vertical merge. */ #restart
]
