type commentOptions = {
  id: float,
  children: array<Docx__FileChild.t>,
  initials?: string,
  author?: string,
  date?: Js.Date.t,
}

@genType
type t = {children: array<commentOptions>}
