type paragraphStylesPropertiesOptions = {
  alignment?: AlignmentType.t,
  contextualSpacing?: bool,
  indent?: IndentAttributesProperties.t,
  /** Specifies that all lines of the paragraph are to be kept on a single page when possible.*/
  keepLines?: bool,
  /** Specifies that the paragraph (or at least part of it) should be rendered on the same page as the next paragraph when possible. If multiple paragraphs are to be kept together but they exceed a page, then the set of paragraphs begin on a new page and page breaks are used thereafter as needed.*/
  keepNext?: bool,
  leftTabStop?: float,
  numbering?: Util.Types.numbering,
}

type baseCharacterStyleOptions = {
  ...StyleOptions.t,
  run?: RunStylePropertiesOptions.t,
}

type baseParagraphStyleOptions = {
  ...StyleOptions.t,
  paragraph?: paragraphStylesPropertiesOptions,
  run?: RunStylePropertiesOptions.t,
}

type documentDefaultOptions = {
  paragraph?: paragraphStylesPropertiesOptions,
  run?: RunStylePropertiesOptions.t,
}

type defaultStylesOptions = {
  document?: documentDefaultOptions,
  title?: baseParagraphStyleOptions,
  heading1?: baseParagraphStyleOptions,
  heading2?: baseParagraphStyleOptions,
  heading3?: baseParagraphStyleOptions,
  heading4?: baseParagraphStyleOptions,
  heading5?: baseParagraphStyleOptions,
  heading6?: baseParagraphStyleOptions,
  strong?: baseParagraphStyleOptions,
  listParagraph?: baseParagraphStyleOptions,
  hyperlink?: baseCharacterStyleOptions,
  footnoteReference?: baseCharacterStyleOptions,
  footnoteText?: baseParagraphStyleOptions,
  footnoteTextChar?: baseCharacterStyleOptions,
}

type characterStyleOptions = {
  ...baseCharacterStyleOptions,
  id: string,
}

type paragraphStyleOptions = {
  ...baseParagraphStyleOptions,
  id: string,
}

type t = {
  default?: defaultStylesOptions,
  characterStyles?: array<characterStyleOptions>,
  paragraphStyles?: array<paragraphStyleOptions>,
  // TODO:
  // initialStyles?:
  // importedStyles?:
}
