/** @see https://docx.js.org/api/classes/TableCell.html */
type t

type tableCellBorders = {
  top?: BorderOptions.t,
  right?: BorderOptions.t,
  bottom?: BorderOptions.t,
  left?: BorderOptions.t,
  end?: BorderOptions.t,
  start?: BorderOptions.t,
}

type tableCellMarginOptions = {
  marginUnitType?: WidthType.t,
  top?: float,
  bottom?: float,
  left?: float,
  right?: float,
}

type options = {
  // NOTE(@EmileRolley): children should only be Paragraph or Table
  children: array<FileChild.t>,
  borders?: tableCellBorders,
  columnSpan?: int,
  margins?: tableCellMarginOptions,
  rowSpan?: float,
  shading?: ShadingAttributesProperties.t,
  textDirection?: TextDirection.t,
  verticalAlign?: VerticalAlign.t,
  verticalMerge?: VerticalMergeType.t,
  width?: TableWidthProperties.t,
}

@module("docx") @new
external make: options => t = "TableCell"
