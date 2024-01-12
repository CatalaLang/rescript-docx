@genType
type t = {
  /** Border color, in hex (eg. 'FF00AA'). */
  color?: string,
  /** Size of the border, in 1/8 pt. */
  size?: float,
  /** Spacing offset. Values are specified in pt. */
  space?: float,
  style: [
    | #single
    | #dashDotStroked
    | #dashed
    | #dashSmallGap
    | #dotDash
    | #dotDotDash
    | #dotted
    | #double
    | #doubleWave
    | #inset
    | #nil
    | #none
    | #outset
    | #thick
    | #thickThinLargeGap
    | #thickThinMediumGap
    | #thickThinSmallGap
    | #thinThickLargeGap
    | #thinThickMediumGap
    | #thinThickSmallGap
    | #thinThickThinLargeGap
    | #thinThickThinMediumGap
    | #thinThickThinSmallGap
    | #threeDEmboss
    | #threeDEngrave
    | #triple
    | #wave
  ],
}
