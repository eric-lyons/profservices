view: ARRAY {
  derived_table: {
    sql:
     WITH
  ARRAY AS (
    SELECT 0 AS value
    UNION ALL SELECT 1
    UNION ALL SELECT 2
    UNION ALL SELECT 3
    UNION ALL SELECT 4
    UNION ALL SELECT 5
    UNION ALL SELECT 6
    UNION ALL SELECT 7
    UNION ALL SELECT 8
    UNION ALL SELECT 9
    UNION ALL SELECT 10
    UNION ALL SELECT 11
    UNION ALL SELECT 12
  )
  SELECT * FROM ARRAY
      ;;
  }

  #new

  dimension: array {
    type: number
    sql: ${TABLE}.value ;;
    primary_key: yes
  }

  measure: 75th_percentile {
    type: percentile
    percentile: 75
    sql: ${TABLE}.value ;;
  }

  measure: 50th_percentile {
    type: percentile
    percentile: 50
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
  }
}
