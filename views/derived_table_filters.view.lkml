view: derived_table_filters {
  derived_table: {
    sql: SELECT
    "city" AS "airports.city",
    "state" AS "airports.state",
    "id" AS "airports.id",
    "full_name" AS "airports.full_name",
    "act_date" AS "airports.act_date",
    "county" AS "airports.county",
    "code" AS "airports.code",
    "elevation" AS "airports.elevation",
    "fac_type" AS "airports.fac_type",
    (CASE WHEN airports.elevation > 1000  THEN 'Yes' ELSE 'No' END) AS "airports.yesno_elevation",
    (CASE WHEN airports.city = 'HOUSTON'  THEN 'Yes' ELSE 'No' END) AS "airports.in_houston_1",
    COUNT(*) AS "airports.count"
      FROM
          "public"."airports" AS "airports"

       WHERE
        {% condition is_above_1000 %} "airports.yesno_elevation" {% endcondition %}
        {% parameter AND_OR %}
        {% condition is_in_houston %} "airports.in_houston_1" {% endcondition %}
         GROUP BY
          1,
          2,
          3,
          4,
          5,
          6,
          7,
          8,
          9,
          10,
          11
      ORDER BY
          11

       ;;
  }

   measure: count {
    type: count

  }

  dimension: airports_city {
    type: string
    sql: ${TABLE}."airports.city" ;;
  }

  dimension: airports_state {
    type: string
    sql: ${TABLE}."airports.state" ;;
  }

  dimension: airports_id {
    type: number
    sql: ${TABLE}."airports.id" ;;
  }

  dimension: airports_full_name {
    type: string
    sql: ${TABLE}."airports.full_name" ;;
  }

  dimension: airports_act_date {
    type: string
    sql: ${TABLE}."airports.act_date" ;;
  }

  dimension: airports_county {
    type: string
    sql: ${TABLE}."airports.county" ;;
  }

  dimension: airports_code {
    type: string
    sql: ${TABLE}."airports.code" ;;
  }

  dimension: airports_elevation {
    type: number
    sql: ${TABLE}."airports.elevation" ;;
  }

  dimension: airports_fac_type {
    type: string
    sql: ${TABLE}."airports.fac_type" ;;
  }

  dimension: yesno_elevation {
    type: yesno
    sql: ${TABLE}."airports.yesno_elevation"  = 'yes';;
  }

  dimension: in_houston {
    type: yesno
    sql: ${TABLE}."airports.in_houston_1" = 'yes' ;;
  }

  dimension: airports_count {
    type: number
    sql: ${TABLE}."airports.count" ;;
  }


  filter: is_above_1000 {
    type: string
  }

  filter: is_in_houston {
    type: string
  }

  parameter: AND_OR {
    type: unquoted
    allowed_value: {value: "AND" label:"AND"}
    allowed_value: { value:"OR" label:"OR"}
  }


}
