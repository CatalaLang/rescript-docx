let maxPosition = 9026

@genType
type t = {
  @as("type") type_: [#left | #right | #center | #bar | #clear | #decimal | #end | #num | #start],
  position: int,
  leader?: Docx__LeaderType.t,
}
