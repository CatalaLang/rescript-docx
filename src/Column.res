type t

type attributes = {
  width: Util.Types.numberOrPositiveUniversalMeasure,
  space?: Util.Types.numberOrPositiveUniversalMeasure,
}

@module("docx") @new
external make: attributes => t = "Column"
