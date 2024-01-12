type margins = {
  bottom?: float,
  left?: float,
  right?: float,
  top?: float,
}

type rec textWrapping = {
  margins?: distance,
  side?: [
    | #bothSides
    | #largest
    | #left
    | #right
  ],
  @as("type")
  type_: [
    | @as("0") #none
    | @as("1") #square
    | @as("2") #tight
    | @as("3") #topAndBottom
  ],
}
and distance = {
  distB?: float,
  distL?: float,
  distR?: float,
  distT?: float,
}

type horizontalPositionAlign = {
  offset?: float,
  align?: [
    | #center
    | #inside
    | #left
    | #outside
    | #right
  ],
  relative?: [
    | #character
    | #column
    | #insideMargin
    | #leftMargin
    | #margin
    | #outsideMargin
    | #page
    | #rightMargin
  ],
}

type verticalPositionAlign = {
  offset?: float,
  align?: [
    | #center
    | #inside
    | #bottom
    | #outside
    | #top
  ],
  relative?: [
    | #character
    | #column
    | #insideMargin
    | #bottomMargin
    | #margin
    | #outsideMargin
    | #page
    | #topMargin
  ],
}

/** @see https://docx.js.org/api/interfaces/IFloating.html */
@genType
type t = {
  allowOverlap?: bool,
  behindDocument?: bool,
  horizontalPosition?: horizontalPositionAlign,
  layoutInCell?: bool,
  lockAnchor?: bool,
  margins?: margins,
  verticalPosition: verticalPositionAlign,
  wrap?: textWrapping,
  zIndex?: int,
}
