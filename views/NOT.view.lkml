# If necessary, uncomment the line below to include explore_source.
# include: "eric_the_redshift.model.lkml"

view: NDT {
  derived_table: {
    persist_for: "24 hours"
    explore_source: flights {
      column: origin {}
      column: cancelled {}
      column: distance {}
      filters: {
        field: flights.origin
        value: ""
      }
    }
  }
  dimension: origin {}
  dimension: cancelled {
    label: "Flights Jeans"
  }
  dimension: distance {
    type: number
  }
}
