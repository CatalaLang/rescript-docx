open Docx__Util

type docGridAttributesProperties = {
  @as("type") type_?: [#default | #lines | #linesAndChars | #snapToChars],
  linePitch?: float,
  charSpace?: float,
}

@genType
type rec t = {
  page?: page,
  grid?: docGridAttributesProperties,
  headerWrapperGroup?: Docx__Headers.headerFooterGroup<Docx__Headers.HeaderWrapper.t>,
  footerWrapperGroup?: Docx__Headers.headerFooterGroup<Docx__Headers.FooterWrapper.t>,
  lineNumbers?: lineNumberAttributes,
  titlePage?: bool,
  vertialAlign?: [#bottom | #center | #top],
  column?: Docx__Columns.attributes,
  @as("type") type_?: [#nextPage | #nextColumn | #continuous | #evenPage | #oddPage],
}
and page = {
  size?: pageSizeAttributes,
  margin?: pageMarginAttributes,
  pageNumbers?: Docx__PageNumberTypeAttributes.t,
  borders?: Docx__PageBorderAttributes.t,
  textDirection?: [
    | @as("lrTb") #left_to_right_top_to_bottom
    | @as("tbRl") #top_to_bottom_right_to_left
  ],
}
and pageSizeAttributes = {
  width?: Types.NumberOrPositiveUniversalMeasure.t,
  height?: Types.NumberOrPositiveUniversalMeasure.t,
  orientation?: [#portrait | #landscape],
}
and pageMarginAttributes = {
  top?: Types.NumberOrUniversalMeasure.t,
  right?: Types.NumberOrPositiveUniversalMeasure.t,
  bottom?: Types.NumberOrUniversalMeasure.t,
  left?: Types.NumberOrPositiveUniversalMeasure.t,
  header?: Types.NumberOrPositiveUniversalMeasure.t,
  footer?: Types.NumberOrPositiveUniversalMeasure.t,
  gutter?: Types.NumberOrPositiveUniversalMeasure.t,
}
and lineNumberAttributes = {
  countBy?: float,
  start?: float,
  restart?: [#newPage | #newSection | #continuous],
  distance?: Types.NumberOrPositiveUniversalMeasure.t,
}
