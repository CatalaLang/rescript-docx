/** @see https://docx.js.org/api/enums/HeightRule.html */
@genType
type t = [
  | /** Height is determined based on the content, so value is ignored. */ #auto
  | /** At least the value specified */ #atLeast
  | /** Exactly the value specified */ #exact
]
