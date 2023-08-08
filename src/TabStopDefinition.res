module TabStopPosition = {
  type t

  @module("docx") @scope("TabStopPosition")
  external max: t = "MAX"
}

module TabStopType = {
  type t

  @module("docx") @scope("TabStopType")
  external left: t = "LEFT"

  @module("docx") @scope("TabStopType")
  external right: t = "RIGHT"

  @module("docx") @scope("TabStopType")
  external center: t = "CENTER"

  @module("docx") @scope("TabStopType")
  external bar: t = "BAR"

  @module("docx") @scope("TabStopType")
  external clear: t = "CLEAR"

  @module("docx") @scope("TabStopType")
  external decimal: t = "DECIMAL"

  @module("docx") @scope("TabStopType")
  external end: t = "END"

  @module("docx") @scope("TabStopType")
  external num: t = "NUM"

  @module("docx") @scope("TabStopType")
  external start: t = "START"
}

module LeaderType = {
  type t

  @module("docx") @scope("LeaderType")
  external dot: t = "DOT"

  @module("docx") @scope("LeaderType")
  external hyphen: t = "HYPHEN"

  @module("docx") @scope("LeaderType")
  external middle_dot: t = "MIDDLE_DOT"

  @module("docx") @scope("LeaderType")
  external none: t = "NONE"

  @module("docx") @scope("LeaderType")
  external underscore: t = "UNDERSCORE"
}

@unwrap
type numberOrTabStopPosition = Number(float) | TabStopPosition(TabStopPosition.t)

type t = {
  @as("type") _type: TabStopType.t,
  position: numberOrTabStopPosition,
  leader?: LeaderType.t,
}
