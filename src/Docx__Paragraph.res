type t = Docx__Util.Types.paragraph

type bullet = {level: int}

type options = {
  alignment?: Docx__AlignmentType.t,
  bullet?: bullet,
  thematicBreak?: bool,
  contextualSpacing?: bool,
  rightTabStop?: float,
  leftTabStop?: float,
  indent?: Docx__IndentAttributesProperties.t,
  spacing?: Docx__SpacingProperties.t,
  keepNext?: bool,
  keepLines?: bool,
  outlineLevel?: float,
  numbering?: Docx__Util.Types.numbering,
  border?: Docx__BordersOptions.t,
  heading?: Docx__HeadingLevel.t,
  bidirectional?: bool,
  pageBreakBefore?: bool,
  tabStops?: array<Docx__TabStopDefinition.t>,
  shading?: Docx__ShadingAttributesProperties.t,
  widowControl?: bool,
  frame?: Docx__FrameOptions.t,
  suppressLineNumbers?: bool,
  wordWrap?: bool,
  scale?: float,
  autoSpaceEastAsianText?: bool,
  text?: string,
  children?: array<Docx__ParagraphChild.t>,
}

@genType.import("docx") @new
external _make: @unwrap [#opt(options) | #str(string)] => t = "Paragraph"

let make = str => _make(#str(str))
let makeWith = opt => _make(#opt(opt))
