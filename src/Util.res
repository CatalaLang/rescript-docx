module Types = {
  // TODO: should be more precise and model the fact that the value could be a 'positive' universal measure
  module NumberOrUniversalMeasure = {
    type t

    external fromFloat: float => t = "%identity"
    external fromString: string => t = "%identity"
  }

  module NumberOrPositiveUniversalMeasure = {
    type t

    external fromFloat: float => t = "%identity"
    external fromString: string => t = "%identity"
  }

  module BoolOrNumberOrUniversalMeasure = {
    type t

    external fromBool: bool => t = "%identity"
    external fromFloat: float => t = "%identity"
    external fromString: string => t = "%identity"
  }

  module BoolOrString = {
    type t

    external fromBool: bool => t = "%identity"
    external fromString: string => t = "%identity"
  }

  type numbering = {
    custom?: bool,
    instance?: float,
    level: float,
    reference: string,
  }
}
