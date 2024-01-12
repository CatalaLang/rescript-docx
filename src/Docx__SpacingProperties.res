type lineRuleType = [#atLeast | #auto | #exactly | #exact]

@genType
type t = {
  after?: float,
  afterAutoSpacing?: bool,
  before?: float,
  beforeAutoSpacing?: bool,
  line?: float,
  lineRule?: lineRuleType,
}
