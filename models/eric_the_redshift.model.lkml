connection: "faa_redshift"

# include all the views
include: "/views/**/*.view"
## First Commit
### Second


datagroup: eric_the_redshift_default_datagroup {
  sql_trigger: SELECT DATE_TRUNC('w', DATEADD(hour,8,GETDATE()));;
}

### TEST

persist_with: eric_the_redshift_default_datagroup

explore: accidents {}

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
