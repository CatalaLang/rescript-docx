type levelStyle = {
  run?: Docx__RunStylePropertiesOptions.t,
  paragraph?: Docx__LevelParagraphStylePropertiesOptions.t,
}

type levelOptions = {
  level: int,
  text?: string,
  alignment?: Docx__AlignmentType.t,
  start?: float,
  suffix?: [#nothing | #space | #tab],
  isLegalNumberingStyle?: bool,
  style?: levelStyle,
  format?: [
    | #decimal
    | #upperRoman
    | #lowerRoman
    | #upperLetter
    | #lowerLetter
    | #ordinal
    | #cardinalText
    | #ordinalText
    | #hex
    | #chicago
    | #ideographDigital
    | #japaneseCounting
    | #aiueo
    | #iroha
    | #decimalFullWidth
    | #decimalHalfWidth
    | #japaneseLegal
    | #japaneseDigitalTenThousand
    | #decimalEnclosedCircle
    | #decimalFullWidth2
    | #aiueoFullWidth
    | #irohaFullWidth
    | #decimalZero
    | #bullet
    | #ganada
    | #chosung
    | #decimalEnclosedFullstop
    | #decimalEnclosedParen
    | #decimalEnclosedCircleChinese
    | #ideographEnclosedCircle
    | #ideographTraditional
    | #ideographZodiac
    | #ideographZodiacTraditional
    | #taiwaneseCounting
    | #ideographLegalTraditional
    | #taiwaneseCountingThousand
    | #taiwaneseDigital
    | #chineseCounting
    | #chineseLegalSimplified
    | #chineseCountingThousand
    | #koreanDigital
    | #koreanCounting
    | #koreanLegal
    | #koreanDigital2
    | #vietnameseCounting
    | #russianLower
    | #russianUpper
    | #none
    | #numberInDash
    | #hebrew1
    | #hebrew2
    | #arabicAlpha
    | #arabicAbjad
    | #hindiVowels
    | #hindiConsonants
    | #hindiNumbers
    | #hindiCounting
    | #thaiLetters
    | #thaiNumbers
    | #thaiCounting
    | #bahtText
    | #dollarText
    | #custom
  ],
}

type numberingOption = {
  levels: array<levelOptions>,
  reference: string,
}

@genType
type t = {config: array<numberingOption>}
