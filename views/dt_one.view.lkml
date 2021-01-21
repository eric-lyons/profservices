view: dt_one {
  derived_table: {
    sql: SELECT
        TO_CHAR(DATE_TRUNC('month', aircraft.cert_issue_date ), 'YYYY-MM') AS "aircraft.cert_issue_month",
        COUNT(*) AS "aircraft.count"
      FROM public.aircraft  AS aircraft

      GROUP BY DATE_TRUNC('month', aircraft.cert_issue_date )
      ORDER BY 2 DESC
      LIMIT 500
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: aircraft_cert_issue_month {
    type: string
    sql: ${TABLE}."aircraft.cert_issue_month" ;;
  }

  dimension: aircraft_count {
    type: number
    sql: ${TABLE}."aircraft.count" ;;
  }

  set: detail {
    fields: [aircraft_cert_issue_month, aircraft_count]
  }
}
