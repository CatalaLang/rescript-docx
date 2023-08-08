type bullet = {level: int}

type numbering = {
  custom?: bool,
  instance?: float,
  level: float,
  reference: string,
}

type options = {
  alignment?: AlignmentType.t,
  autoSpaceEastAsianText?: bool,
  bidirectional?: bool,
  border?: BordersOptions.t,
  bullet?: bullet,
  children?: array<ParagraphChild.t>,
  contextualSpacing?: bool,
  frame?: FrameOptions.t,
  heading?: HeadingLevel.t,
  indent?: IndentAttributesProperties.t,
  keepLines?: bool,
  keepNext?: bool,
  leftTabStop?: float,
  numbering?: numbering,
  outlineLevel?: float,
  pageBreakBefore?: bool,
  rightTabStop?: float,
  scale?: float,
  shading?: ShadingAttributesProperties.t,
  spacing?: SpacingProperties.t,
  style?: string,
  suppressLineNumbers?: bool,
  tabStops?: array<TabStopDefinition.t>,
  text?: string,
  thematicBreak?: bool,
  widowControl?: bool,
  wordWrap?: bool,
}

@module("docx") @new
external make: string => FileChild.t = "Paragraph"

@module("docx") @new
external make': options => FileChild.t = "Paragraph"
