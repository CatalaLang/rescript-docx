type t

type features = {
  trackRevisions?: bool,
  updateFields?: bool,
}

type customPropertyOptions = {
  name: string,
  value: string,
}

type rec footnotes = Js.Dict.t<footnote>
and footnote = {children: array<Docx__Paragraph.t>}

type rec options = {
  sections: array<sectionOptions>,
  title?: string,
  subject?: string,
  creator?: string,
  keywords?: string,
  description?: string,
  lastModifiedBy?: string,
  revision?: float,
  externalStyles?: string,
  styles?: Docx__StylesOptions.t,
  numbering?: Docx__NumberingOptions.t,
  comments?: Docx__CommentsOptions.t,
  footnotes?: footnotes,
  background?: documentBackgroundOptions,
  features?: features,
  compatabilityModeVersion?: float,
  compatibility?: Docx__CompatibilityOptions.t,
  customProperties?: array<customPropertyOptions>,
  evenAndOddHeaderAndFooters?: bool,
}
and sectionOptions = {
  properties?: Docx__SectionPropertiesOptions.t,
  headers?: Docx__Headers.headerFooterGroup<Docx__Headers.Header.t>,
  footers?: Docx__Headers.headerFooterGroup<Docx__Headers.Footer.t>,
  children: array<Docx__FileChild.t>,
}
and documentBackgroundOptions = {
  color?: string,
  themeColor?: string,
  themeShade?: string,
  themeTint?: string,
}

@genType.import("docx") @new
external make: options => t = "Document"
