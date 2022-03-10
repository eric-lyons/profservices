view: myevent_2 {
  sql_table_name: public.myevent_2 ;;

  dimension: eventcity {
    type: string
    sql: ${TABLE}.eventcity ;;
  }

  dimension: eventid {
    type: number
    value_format_name: id
    sql: ${TABLE}.eventid ;;
  }

  dimension: eventname {
    type: string
    sql: ${TABLE}.eventname ;;
  }

  measure: count {
    type: count
    drill_fields: [eventname]
  }
}
