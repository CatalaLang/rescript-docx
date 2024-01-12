open Docx__Util

type t

type attributes = {
  width: Types.NumberOrPositiveUniversalMeasure.t,
  space?: Types.NumberOrPositiveUniversalMeasure.t,
}

@genType.import("docx") @new
external make: attributes => t = "Column"
