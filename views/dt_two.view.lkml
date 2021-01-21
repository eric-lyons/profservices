view: dt_two {
  derived_table: {
    sql: SELECT "aircraft.cert_issue_month" from ${dt_one.SQL_TABLE_NAME} as dt_one;;
  }



  dimension: aircraft_cert_issue_month {
    type: string
    sql: ${TABLE}."aircraft.cert_issue_month" ;;
  }

}
