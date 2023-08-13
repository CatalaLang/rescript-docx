type fontOptions = {
  name: string,
  hint?: string,
}

type fontAttributesProperties = {
  ascii?: string,
  eastAsia?: string,
  hAnsi?: string,
  cs?: string,
}

type underline = {
  color?: string,
  @as("type") type_?: UnderlineType.t,
}

type emphasisMark = {@as("type") type_?: EmphasisMarkType.t}

type languageOptions = {
  value?: string,
  eastAsia?: string,
  bidirectional?: string,
}

type t = {
  noProof?: bool,
  bold?: bool,
  boldComplexScript?: bool,
  italics?: bool,
  italicsComplexScript?: bool,
  underline?: underline,
  effect?: TextEffect.t,
  emphasisMark?: emphasisMark,
  color?: string,
  kern?: Util.Types.numberOrPositiveUniversalMeasure,
  position?: Util.Types.universalMeasure,
  size?: Util.Types.numberOrPositiveUniversalMeasure,
  sizeComplexScript?: Util.Types.boolOrNumberOrUniversalMeasure,
  rightToLeft?: bool,
  smallCaps?: bool,
  allCaps?: bool,
  strike?: bool,
  doubleStrike?: bool,
  subScript?: bool,
  superScript?: bool,
  font?: @unwrap
  [
    | #String(string)
    | #FontOptions(fontOptions)
    | #FontAttributesProperties(fontAttributesProperties)
  ],
  highlight?: string,
  highlightComplexScript?: @unwrap [#Bool(bool) | #String(string)],
  characterSpacing?: float,
  shading?: ShadingAttributesProperties.t,
  emboss?: bool,
  imprint?: bool,
  language?: languageOptions,
  border?: BorderOptions.t,
  snapToGrid?: bool,
  vanish?: bool,
  specVanish?: bool,
  scale?: float,
  math?: bool,
  // TODO:
  // revision?: RunPropertiesChangeOptions.t,
}
