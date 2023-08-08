/** @see https://docx.js.org/api/enums/TabStopPosition.html */
module TabStopPosition: {
  type t
  let max: t
}

/** @see https://docx.js.org/api/enums/TabStopType.html */
module TabStopType: {
  type t
  let left: t
  let right: t
  let center: t
  let bar: t
  let clear: t
  let decimal: t
  let end: t
  let num: t
  let start: t
}

/** @see https://docx.js.org/api/enums/LeaderType.html */
module LeaderType: {
  type t
  let dot: t
  let hyphen: t
  let middle_dot: t
  let none: t
  let underscore: t
}

@unwrap
type numberOrTabStopPosition = Number(float) | TabStopPosition(TabStopPosition.t)

/** @see https://docx.js.org/api/interfaces/TabStopDefinition.html */
type t = {
  @as("type") _type: TabStopType.t,
  position: numberOrTabStopPosition,
  leader?: LeaderType.t,
}
