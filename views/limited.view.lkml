view: limited_dt {
  derived_table: {
    sql: SELECT
          "city" AS "airports.city",
          "elevation" AS "airports.elevation",
          "faa_dist" AS "airports.faa_dist",
          "full_name" AS "airports.full_name",
          "id" AS "airports.id",
          "site_number" AS "airports.site_number",
          "state" AS "airports.state"
      FROM
          "public"."airports" AS "airports"
      ORDER BY
          1
       ;;
  }

  measure: count {
    type: count
  }

  dimension: airports_city {
    type: string
    sql: ${TABLE}."airports.city" ;;
  }

  dimension: airports_elevation {
    type: number
    sql: ${TABLE}."airports.elevation" ;;
  }

  dimension: airports_faa_dist {
    type: string
    sql: ${TABLE}."airports.faa_dist" ;;
  }

  dimension: airports_full_name {
    type: string
    sql: ${TABLE}."airports.full_name" ;;
  }

  dimension: airports_id {
    type: number
    sql: ${TABLE}."airports.id" ;;
  }

  dimension: airports_site_number {
    type: string
    sql: ${TABLE}."airports.site_number" ;;
  }

  dimension: airports_state {
    type: string
    sql: ${TABLE}."airports.state" ;;
  }



}
