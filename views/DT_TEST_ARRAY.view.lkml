view: DT_TEST_ARRAY {
  derived_table: {
    sql: WITH ARRAY AS (select
          (row_number() over (order by 1)) as hour
      from
          airports
      limit 12)
      SELECT
      *
      from ARRAY
       ;;
  }

  measure: median {
    type: median
    sql: ${hour} ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: hour {
    type: number
    sql: ${TABLE}.hour ;;
    primary_key: yes
  }

  set: detail {
    fields: [hour]
  }
}
