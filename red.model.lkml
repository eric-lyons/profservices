connection: "faa_redshift"

include: "/views/*.view.lkml"
#breakl
#new
# new merge
#another
# include all views in the views/ folder in this project
explore: dt_a {
  join: dt_b {
    type: inner
    #new
    relationship: one_to_one
    sql_on: ${dt_a.row} = ${dt_b.row} ;;
  }
  join: dt_c {
    type: full_outer
    relationship: one_to_one
    sql_on:  ${dt_b.row} = ${dt_c.row} ;;
  }
  join: dt_d {
    type: inner
    relationship: one_to_one
    sql_on: ${dt_c.row} = ${dt_d.row} ;;
  }
}
#test
test: is_accurate {
  explore_source: flights {
    column: total_revenue {
      field: flights.count
    }
    filters: [flights.arr_year: "2017"]
  }
  assert: os_expected_value {
    expression: ${flights.count} = 2 ;;
  }
}
#hi
explore: controller_dt {}

explore: flights {
  sql_always_having:
  {% if _user_attributes['age'] == 100 %}
   ${count} > 10
  {% else %}
    21=1
  {% endif %} ;;

}
