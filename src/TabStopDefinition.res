type tabStopPosition = | @as("9026") Max

@unwrap
type numberOrTabStopPosition = Number(float) | TabStopPosition(tabStopPosition)

type t = {
  @as("type") type_: [#left | #right | #center | #bar | #clear | #decimal | #end | #num | #start],
  position: numberOrTabStopPosition,
  leader?: LeaderType.t,
}
