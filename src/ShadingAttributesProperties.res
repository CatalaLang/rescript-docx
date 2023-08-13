type rec t = {
  color?: string,
  fill?: string,
  @as("type") type_?: shadingType,
}
and shadingType =
  | @as("clear") Clear
  | @as("diagCross") DiagonalCross
  | @as("diagStripe") DiagonalStripe
  | @as("horzCross") HorizontalCross
  | @as("horzStripe") HorizontalStripe
  | @as("nil") Nil
  | @as("pct5") Percent5
  | @as("pct10") Percent10
  | @as("pct12") Percent12
  | @as("pct15") Percent15
  | @as("pct20") Percent20
  | @as("pct25") Percent25
  | @as("pct30") Percent30
  | @as("pct35") Percent35
  | @as("pct37") Percent37
  | @as("pct40") Percent40
  | @as("pct45") Percent45
  | @as("pct50") Percent50
  | @as("pct55") Percent55
  | @as("pct60") Percent60
  | @as("pct62") Percent62
  | @as("pct65") Percent65
  | @as("pct70") Percent70
  | @as("pct75") Percent75
  | @as("pct80") Percent80
  | @as("pct85") Percent85
  | @as("pct87") Percent87
  | @as("pct90") Percent90
  | @as("pct95") Percent95
  | @as("reverseDiagStripe") ReverseDiagonalStripe
  | @as("solid") Solid
  | @as("thinDiagCross") ThinDiagonalCross
  | @as("thinDiagStripe") ThinDiagonalStripe
  | @as("thinHorzCross") ThinHorizontalCross
  | @as("thinReverseDiagStripe") ThinReverseDiagonalStripe
  | @as("thinVertStripe") ThinVerticalStripe
  | @as("vertStripe") VerticalStripe
