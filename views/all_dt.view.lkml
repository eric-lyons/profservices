view: all_dt {
  derived_table: {
    sql: SELECT
          "city" AS "airports.city",
          "code" AS "airports.code",
          "county" AS "airports.county",
          "elevation" AS "airports.elevation",
          "faa_dist" AS "airports.faa_dist",
          "faa_region" AS "airports.faa_region",
          "full_name" AS "airports.full_name",
          "id" AS "airports.id",
          "longitude" AS "airports.longitude",
          "latitude" AS "airports.latitude",
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
    drill_fields: [detail*]
  }

  dimension: airports_city {
    type: string
    sql: ${TABLE}."airports.city" ;;
  }

  dimension: airports_code {
    type: string
    sql: ${TABLE}."airports.code" ;;
  }

  dimension: airports_county {
    type: string
    sql: ${TABLE}."airports.county" ;;
  }

  dimension: airports_elevation {
    type: number
    sql: ${TABLE}."airports.elevation" ;;
  }

  dimension: airports_faa_dist {
    type: string
    sql: ${TABLE}."airports.faa_dist" ;;
  }

  dimension: airports_faa_region {
    type: string
    sql: ${TABLE}."airports.faa_region" ;;
  }

  dimension: airports_full_name {
    type: string
    sql: ${TABLE}."airports.full_name" ;;
  }

  dimension: airports_id {
    type: number
    sql: ${TABLE}."airports.id" ;;
  }

  dimension: airports_longitude {
    type: number
    sql: ${TABLE}."airports.longitude" ;;
  }

  dimension: airports_latitude {
    type: number
    sql: ${TABLE}."airports.latitude" ;;
  }

  dimension: airports_site_number {
    type: string
    sql: ${TABLE}."airports.site_number" ;;
  }

  dimension: airports_state {
    type: string
    sql: ${TABLE}."airports.state" ;;
  }

  set: detail {
    fields: [
      airports_city,
      airports_code,
      airports_county,
      airports_elevation,
      airports_faa_dist,
      airports_faa_region,
      airports_full_name,
      airports_id,
      airports_longitude,
      airports_latitude,
      airports_site_number,
      airports_state
    ]
  }
}
