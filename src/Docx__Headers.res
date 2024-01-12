/** @see https://docx.js.org/api/interfaces/IHeaderOptions.html */
@genType
type headerOptions = {children: array<Docx__FileChild.t>}

@genType
type headerFooterGroup<'a> = {
  default?: 'a,
  first?: 'a,
  even?: 'a,
}

/** @see https://docx.js.org/api/classes/Header.html */
module Header = {
  @genType
  type t

  @genType.import("docx") @new
  external make: headerOptions => t = "Header"
}

module HeaderWrapper = {
  @genType
  type t

  @genType.import("docx") @new
  external make: headerOptions => t = "HeaderWrapper"
}

module FooterWrapper = {
  @genType
  type t

  @genType.import("docx") @new
  external make: headerOptions => t = "FooterWrapper"
}

/** @see https://docx.js.org/api/classes/Footer.html */
module Footer = {
  @genType
  type t

  @genType.import("docx") @new
  external make: headerOptions => t = "Footer"
}
