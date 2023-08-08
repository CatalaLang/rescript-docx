module Types = {
  type universalMeasure = string

  type positiveUniversalMeasure = string

  @unwrap
  type numberOrUniversalMeasure = Number(float) | UniversalMeasure(universalMeasure)

  @unwrap
  type numberOrPositiveUniversalMeasure =
    | Number(float)
    | PositiveUniversalMeasure(positiveUniversalMeasure)
}
