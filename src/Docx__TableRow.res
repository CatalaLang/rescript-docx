/** @see https://docx.js.org/api/classes/TableRow.html */
type t

type height = {
  rule: Docx__HeightRule.t,
  value: Docx__Util.Types.NumberOrPositiveUniversalMeasure.t,
}

type options = {
  children: array<Docx__TableCell.t>,
  canSplit?: bool,
  height?: height,
  tableHeader?: bool,
}

@genType.import("docx") @new
external make: options => t = "TableRow"
