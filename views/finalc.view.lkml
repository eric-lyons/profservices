view:  finalc {
  derived_table: {
    sql:  SELECT
    "accidents.air_carrier"  AS "air_carrier",
    "carriers"."name" AS "name"
FROM ${b.SQL_TABLE_NAME} AS "accidents"
LEFT JOIN ${a.SQL_TABLE_NAME} AS "carriers" ON CAST("accidents.air_carrier" AS varchar) = CAST("carriers"."name" as varchar)
GROUP BY
    1,
    2
       ;;
  }


  dimension: accidents_air_carrier {
    type: string
    primary_key: yes
    sql: ${TABLE}."air_carrier" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  set: detail {
    fields: [accidents_air_carrier]
  }
}
