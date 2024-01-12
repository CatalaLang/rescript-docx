/** @see https://docx.js.org/api/classes/Table.html */
open Docx__Util.Types

type t = table

type tableBordersOptions = {
  insideHorizontal?: Docx__BorderOptions.t,
  insideVertical?: Docx__BorderOptions.t,
  top?: Docx__BorderOptions.t,
  left?: Docx__BorderOptions.t,
  right?: Docx__BorderOptions.t,
  bottom?: Docx__BorderOptions.t,
}

type tableFloatOptions = {
  absoluteHorizontalPosition?: NumberOrUniversalMeasure.t,
  absoluteVerticalPosition?: NumberOrUniversalMeasure.t,
  bottomFromText?: NumberOrPositiveUniversalMeasure.t,
  leftFromText?: NumberOrPositiveUniversalMeasure.t,
  rightFromText?: NumberOrPositiveUniversalMeasure.t,
  topFromText?: NumberOrPositiveUniversalMeasure.t,
}

type options = {
  rows: array<Docx__TableRow.t>,
  alignment?: Docx__AlignmentType.t,
  borders?: tableBordersOptions,
  columnWidths?: array<float>,
  float?: tableFloatOptions,
  indent?: Docx__TableWidthProperties.t,
  layout?: [#autofit | #fixed],
  margins?: Docx__TableCellMarginOptions.t,
  style?: string,
  visuallyRightToLeft?: bool,
  width?: Docx__TableWidthProperties.t,
}

@genType.import("docx") @new
external make: options => t = "Table"
