type rec anchor = {
  horizontal: frameAnchorType,
  vertical: frameAnchorType,
}
and frameAnchorType = [#text | #margin | #page]

type rec baseFrameOptions = {
  anchor: anchor,
  anchorLock?: bool,
  dropCap?: dropCapType,
  height: float,
  lines?: float,
  rule?: heightRule,
  width: float,
  wrap?: frameWrap,
}
and dropCapType = [#drop | #margin | #none]
and heightRule = [#atLeast | #auto | #exact]
and frameWrap = [#around | #auto | #none | #notBeside | #through | #tight]

type rec xyFrameOptions = {
  ...baseFrameOptions,
  @as("type") type_: [#absolute],
  position: position,
}
and position = {
  x: float,
  y: float,
}

type rec alignmentFrameOptions = {
  ...baseFrameOptions,
  @as("type") type_: [#alignment],
  alignment: alignment,
}
and alignment = {
  x: [#center | #inside | #outside | #left | #right],
  y: [#center | #inside | #outside | #bottom | #top],
}
and space = {
  horizontal: float,
  vertical: float,
}

@genType @unwrap
type t = XYFrameOptions(xyFrameOptions) | AlignmentFrameOptions(alignmentFrameOptions)
