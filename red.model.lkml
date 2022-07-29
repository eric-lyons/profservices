connection: "faa_redshift"
#change

include: "/views/*.view.lkml"
#breakl
#new
# new merge
#another
# include all views in the views/ folder in this project

explore: dt_a {
  join: dt_b {
    type: inner
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

explore: flights {}
