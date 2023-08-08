module ShadingType = {
  type t

  @module("docx") @scope("ShadingType")
  external clear: t = "CLEAR"

  @module("docx") @scope("ShadingType")
  external diagonal_cross: t = "DIAGONAL_CROSS"

  @module("docx") @scope("ShadingType")
  external diagonal_stripe: t = "DIAGONAL_STRIPE"

  @module("docx") @scope("ShadingType")
  external horizontal_cross: t = "HORIZONTAL_CROSS"

  @module("docx") @scope("ShadingType")
  external horizontal_stripe: t = "HORIZONTAL_STRIPE"

  @module("docx") @scope("ShadingType")
  external nil: t = "NIL"

  @module("docx") @scope("ShadingType")
  external percent_5: t = "PERCENT_5"

  @module("docx") @scope("ShadingType")
  external percent_10: t = "PERCENT_10"

  @module("docx") @scope("ShadingType")
  external percent_12: t = "PERCENT_12"

  @module("docx") @scope("ShadingType")
  external percent_15: t = "PERCENT_15"

  @module("docx") @scope("ShadingType")
  external percent_20: t = "PERCENT_20"

  @module("docx") @scope("ShadingType")
  external percent_25: t = "PERCENT_25"

  @module("docx") @scope("ShadingType")
  external percent_30: t = "PERCENT_30"

  @module("docx") @scope("ShadingType")
  external percent_35: t = "PERCENT_35"

  @module("docx") @scope("ShadingType")
  external percent_37: t = "PERCENT_37"

  @module("docx") @scope("ShadingType")
  external percent_40: t = "PERCENT_40"

  @module("docx") @scope("ShadingType")
  external percent_45: t = "PERCENT_45"

  @module("docx") @scope("ShadingType")
  external percent_50: t = "PERCENT_50"

  @module("docx") @scope("ShadingType")
  external percent_55: t = "PERCENT_55"

  @module("docx") @scope("ShadingType")
  external percent_60: t = "PERCENT_60"

  @module("docx") @scope("ShadingType")
  external percent_62: t = "PERCENT_62"

  @module("docx") @scope("ShadingType")
  external percent_65: t = "PERCENT_65"

  @module("docx") @scope("ShadingType")
  external percent_70: t = "PERCENT_70"

  @module("docx") @scope("ShadingType")
  external percent_75: t = "PERCENT_75"

  @module("docx") @scope("ShadingType")
  external percent_80: t = "PERCENT_80"

  @module("docx") @scope("ShadingType")
  external percent_85: t = "PERCENT_85"

  @module("docx") @scope("ShadingType")
  external percent_87: t = "PERCENT_87"

  @module("docx") @scope("ShadingType")
  external percent_90: t = "PERCENT_90"

  @module("docx") @scope("ShadingType")
  external percent_95: t = "PERCENT_95"

  @module("docx") @scope("ShadingType")
  external reverse_diagonal_stripe: t = "REVERSE_DIAGONAL_STRIPE"

  @module("docx") @scope("ShadingType")
  external solid: t = "SOLID"

  @module("docx") @scope("ShadingType")
  external thin_diagonal_cross: t = "THIN_DIAGONAL_CROSS"

  @module("docx") @scope("ShadingType")
  external thin_diagonal_stripe: t = "THIN_DIAGONAL_STRIPE"

  @module("docx") @scope("ShadingType")
  external thin_horizontal_cross: t = "THIN_HORIZONTAL_CROSS"

  @module("docx") @scope("ShadingType")
  external thin_reverse_diagonal_stripe: t = "THIN_REVERSE_DIAGONAL_STRIPE"

  @module("docx") @scope("ShadingType")
  external thin_vertical_stripe: t = "THIN_VERTICAL_STRIPE"

  @module("docx") @scope("ShadingType")
  external vertical_stripe: t = "VERTICAL_STRIPE"
}

type t = {
  color?: string,
  fill?: string,
  @as("type") _type?: ShadingType.t,
}
