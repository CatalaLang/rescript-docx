type bullet = {level: int}

type numbering = {
  custom?: bool,
  instance?: float,
  level: float,
  reference: string,
}

type options = {
  alignment?: AlignmentType.t,
  /**
  * This element specifies whether inter-character spacing shall
  * automatically be adjusted between regions of numbers and regions of East
  * Asian text in the current paragraph. These regions shall be determined by
  * the Unicode character values of the text content within the paragraph. This
  * only works in Microsoft Word. It is not part of the ECMA-376 OOXML
  * standard.
  */
  autoSpaceEastAsianText?: bool,
  bidirectional?: bool,
  border?: BordersOptions.t,
  bullet?: bullet,
  children?: array<ParagraphChild.t>,
  contextualSpacing?: bool,
  frame?: FrameOptions.t,
  heading?: HeadingLevel.t,
  indent?: IndentAttributesProperties.t,
  /** Specifies that all lines of the paragraph are to be kept on a single page when possible. */
  keepLines?: bool,
  /**
  * Specifies that the paragraph (or at least part of it) should be rendered
  * on the same page as the next paragraph when possible. If multiple
  * paragraphs are to be kept together but they exceed a page, then the set of
  * paragraphs begin on a new page and page breaks are used thereafter as
  * needed.
  */
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

/** Creates a new paragraph with the given text. */
let make: string => FileChild.t

/** Creates a new paragraph with the given [options]. */
let make': options => FileChild.t
