view: b {
  derived_table: {
    sql: SELECT
          "air_carrier" AS "accidents.air_carrier"
      FROM
          "public"."accidents" AS "accidents"
      GROUP BY
          1
      ORDER BY
          1
      LIMIT 500
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: accidents_air_carrier {
    type: string
    sql: ${TABLE}."accidents.air_carrier" ;;
  }

  set: detail {
    fields: [accidents_air_carrier]
  }
}
