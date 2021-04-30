connection: "faa_redshift"

# include all the views
include: "/views/**/*"
include: "/**/*.dashboard"




explore: derived_table_filters {}

datagroup: eric_the_redshift_default_datagroup {
  sql_trigger: SELECT DATE_TRUNC('w', DATEADD(hour,8,GETDATE()));;
}

explore: a {}

explore: finalc {}

### TEST

persist_with: eric_the_redshift_default_datagroup

explore: accidents {}


explore: +accidents {
  aggregate_table: year_test {
    query: {
      dimensions: [accidents.event_year]
      measures: [accidents.count]
      timezone: America/Los_Angeles
      filters: [
        accidents.event_week: "3 years ago for 1 year",
        accidents.injury_severity: "Non-Fatal"
      ]
    }
    materialization: {persist_for: "24 hours"}
  }
}


explore: +accidents {
  aggregate_table: week_test {
    query: {
      dimensions: [accidents.event_week]
      measures: [accidents.count]
      timezone: America/Los_Angeles
      filters: [
        accidents.event_week: "260 weeks ago for 12 weeks",
        accidents.injury_severity: "Non-Fatal"
      ]
    }
    materialization: {persist_for: "24 hours"}
  }
}

explore: aircraft {}

explore: dt_one {}

explore: dt_two {}

explore: aircraft_models {}

explore: airports {}



explore: blah {}

explore: cal454 {}

explore: carriers {}

explore: case_sensitive {}

explore: flights {}

explore: flights_by_day {}

explore: myevent {}

explore: myevent_2 {}

explore: ontime {}

explore: temp2 {}
