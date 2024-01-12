open Docx__Util

type t

type attributes = {
  space?: Types.NumberOrPositiveUniversalMeasure.t,
  count?: float,
  separate?: bool,
  equalWidth?: bool,
  children?: array<Docx__Column.t>,
}

@genType.import("docx") @new
external make: attributes => t = "Columns"
