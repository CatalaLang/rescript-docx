/** @see https://docx.js.org/api/classes/TableCell.html */
type t

type tableCellBorders = {
  top?: Docx__BorderOptions.t,
  right?: Docx__BorderOptions.t,
  bottom?: Docx__BorderOptions.t,
  left?: Docx__BorderOptions.t,
  end?: Docx__BorderOptions.t,
  start?: Docx__BorderOptions.t,
}

type options = {
  children: array<Docx__Util.Types.ParagraphOrTable.t>,
  borders?: tableCellBorders,
  columnSpan?: int,
  margins?: Docx__TableCellMarginOptions.t,
  rowSpan?: float,
  shading?: Docx__ShadingAttributesProperties.t,
  textDirection?: Docx__TextDirection.t,
  verticalAlign?: Docx__VerticalAlign.t,
  verticalMerge?: Docx__VerticalMergeType.t,
  width?: Docx__TableWidthProperties.t,
}

@genType.import("docx") @new
external make: options => t = "TableCell"
