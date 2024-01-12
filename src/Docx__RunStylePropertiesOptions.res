open Docx__Util

type underline = {
  color?: string,
  @as("type") type_?: Docx__UnderlineType.t,
}

type emphasisMark = {@as("type") type_?: [#dot]}

type languageOptions = {
  value?: string,
  eastAsia?: string,
  bidirectional?: string,
}

@genType
type t = {
  noProof?: bool,
  bold?: bool,
  boldComplexScript?: bool,
  italics?: bool,
  italicsComplexScript?: bool,
  underline?: underline,
  effect?: [
    | #blinkBackground
    | #lights
    | #antsBlack
    | #antsRed
    | #shimmer
    | #sparkle
    | #none
  ],
  emphasisMark?: emphasisMark,
  color?: string,
  kern?: Types.NumberOrPositiveUniversalMeasure.t,
  position?: Types.NumberOrUniversalMeasure.t,
  size?: Types.NumberOrPositiveUniversalMeasure.t,
  sizeComplexScript?: Types.BoolOrNumberOrUniversalMeasure.t,
  rightToLeft?: bool,
  smallCaps?: bool,
  allCaps?: bool,
  strike?: bool,
  doubleStrike?: bool,
  subScript?: bool,
  superScript?: bool,
  font?: Docx__Font.t,
  highlight?: string,
  highlightComplexScript?: Types.BoolOrString.t,
  characterSpacing?: float,
  shading?: Docx__ShadingAttributesProperties.t,
  emboss?: bool,
  imprint?: bool,
  language?: languageOptions,
  border?: Docx__BorderOptions.t,
  snapToGrid?: bool,
  vanish?: bool,
  specVanish?: bool,
  scale?: float,
  math?: bool,
  // TODO:
  // revision?: RunPropertiesChangeOptions.t,
}
