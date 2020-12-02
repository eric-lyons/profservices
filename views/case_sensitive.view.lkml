view: case_sensitive {
  sql_table_name: public.case_sensitive ;;

  dimension: aaa {
    type: string
    sql: ${TABLE}.aaa ;;
  }

  dimension: abc {
    type: string
    sql: ${TABLE}.abc ;;
  }

  dimension: bcc {
    type: string
    sql: ${TABLE}.bcc ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
