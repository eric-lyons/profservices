include: "/views/**/*.view"
include: "/views/*.view.lkml"


view: mega_tron {
derived_table: {
    sql:
    {% if all_dt.airports_longitude._is_selected or all_dt.airports_latitude._is_selected %}

    SELECT * FROM ${all_dt.SQL_TABLE_NAME}

    {% else %}

    SELECT * FROM ${limited_dt.SQL_TABLE_NAME}

    {% endif %}

       ;;
}

  measure: count {
    type: count
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


  }
