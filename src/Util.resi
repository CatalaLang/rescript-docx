module Types: {
  /** @see https://docx.js.org/api/types/UniversalMeasure.html */
  type universalMeasure = string

  /** @see https://docx.js.org/api/types/PositiveUniversalMeasure.html */
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
