view: b221355784 {
  sql_table_name: public.accidents ;;

  dimension_group: event {
    type: time
    timeframes: [
      raw,
      day_of_month,
      month_name,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.event_date ;;
  }

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  measure: count_users {
    type: count_distinct
    allow_approximate_optimization: yes
    sql: ${id};; }

  }
