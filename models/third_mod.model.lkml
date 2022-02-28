connection: "faa_redshift_22822"

include: "/views/*.view.lkml"

explore: accidents {}

explore: aircraft {}

explore: mega_tron {
  join: limited_dt {
    sql_on: ${limited_dt.airports_id} = ${mega_tron.airports_id} ;;
    relationship: one_to_one
  }
  join: all_dt{
    sql_on: ${all_dt.airports_id} = ${mega_tron.airports_id} ;;
    relationship: one_to_one
  }
  }
