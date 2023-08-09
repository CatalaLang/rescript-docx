type t

type bullet = {level: int}

module Properties = {
  type levelParagraphStylePropertiesOptions = {
    alignment?: AlignmentType.t,
    thematicBreak?: bool,
    contextualSpacing?: bool,
    rightTabStop?: float,
    leftTabStop?: float,
    indent?: IndentAttributesProperties.t,
    spacing?: SpacingProperties.t,
    keepNext?: bool,
    keepLines?: bool,
    outlineLevel?: float,
  }

  type paragraphStylePropertiesOptions = {
    ...levelParagraphStylePropertiesOptions,
    numbering?: Util.Types.numbering,
  }

  type paragraphPropertiesOptions = {
    ...paragraphStylePropertiesOptions,
    border?: BordersOptions.t,
    heading?: HeadingLevel.t,
    bidirectional?: bool,
    pageBreakBefore?: bool,
    tabStops?: array<TabStopDefinition.t>,
    shading?: ShadingAttributesProperties.t,
    widowControl?: bool,
    frame?: FrameOptions.t,
    suppressLineNumbers?: bool,
    wordWrap?: bool,
    scale?: float,
    autoSpaceEastAsianText?: bool,
  }
}

type options = {
  ...Properties.paragraphPropertiesOptions,
  text?: string,
  children?: array<ParagraphChild.t>,
}

@module("docx") @new
external make: string => t = "Paragraph"

@module("docx") @new
external make': options => t = "Paragraph"
