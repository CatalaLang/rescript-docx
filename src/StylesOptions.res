type style = {
  id?: string,
  name?: string,
  basedOn?: string,
  next?: string,
  quickFormat?: bool,
  run?: TextRun.options,
  paragraph?: Paragraph.options,
}

type rec defaultStylesOptions = {
  document?: documentDefaultOptions,
  heading1?: style,
  heading2?: style,
  heading3?: style,
  heading4?: style,
  heading5?: style,
  heading6?: style,
  hyperlink?: style,
  paragraphList?: style,
}
and documentDefaultOptions = {
  paragraph?: paragraphStylesPropertiesOptions,
  run?: RunStylePropertiesOptions.t,
}
and paragraphStylesPropertiesOptions = {
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

type t = {
  // characterStyles?: array<characterStyleOptions>,
  default?: defaultStylesOptions,
  // paragraphStyles?: array<paragraphStyleOptions>,
  // TODO:
  // initialStyles?:
  // importedStyles?:
}
