module Types = {
  // TODO: could be more precise?
  type universalMeasure = string

  // TODO: could be more precise?
  type positiveUniversalMeasure = string

  @unwrap
  type numberOrUniversalMeasure = Number(float) | UniversalMeasure(universalMeasure)

  @unwrap
  type numberOrPositiveUniversalMeasure =
    | Number(float)
    | PositiveUniversalMeasure(positiveUniversalMeasure)

  @unwrap
  type boolOrNumberOrUniversalMeasure =
    | Bool(bool)
    | Number(float)
    | PositiveUniversalMeasure(universalMeasure)

  type numbering = {
    custom?: bool,
    instance?: float,
    level: float,
    reference: string,
  }
}
