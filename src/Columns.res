type t

type attributes = {
  space?: Util.Types.numberOrPositiveUniversalMeasure,
  count?: float,
  separate?: bool,
  equalWidth?: bool,
  children?: array<Column.t>,
}

@module("docx") @new
external make: attributes => t = "Columns"
