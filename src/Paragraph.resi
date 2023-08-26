type t

type bullet = {level: int}

type options = {
  /* -> To factorize with the v11 record spread notation */
  alignment?: AlignmentType.t,
  thematicBreak?: bool,
  contextualSpacing?: bool,
  rightTabStop?: float,
  leftTabStop?: float,
  indent?: IndentAttributesProperties.t,
  spacing?: SpacingProperties.t,
  /**
     * Specifies that the paragraph (or at least part of it) should be rendered
     * on the same page as the next paragraph when possible. If multiple
  	 * paragraphs are to be kept together but they exceed a page, then the set of
  	 * paragraphs begin on a new page and page breaks are used thereafter as
  	 * needed.
  	 */
  keepNext?: bool,
  /** Specifies that all lines of the paragraph are to be kept on a single page when possible. */
  keepLines?: bool,
  outlineLevel?: float,
  numbering?: Util.Types.numbering,
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
  /**
	 * This element specifies whether inter-character spacing shall
	 * automatically be adjusted between regions of numbers and regions of East
	 * Asian text in the current paragraph. These regions shall be determined by
	 * the Unicode character values of the text content within the paragraph. This
	 * only works in Microsoft Word. It is not part of the ECMA-376 OOXML
	 * standard.
	 */
  autoSpaceEastAsianText?: bool,
  /* <- */
  text?: string,
  children?: array<ParagraphChild.t>,
}

/** Creates a new paragraph with the given text. */
let make: string => t

/** Creates a new paragraph with the given [options]. */
let make': options => t
