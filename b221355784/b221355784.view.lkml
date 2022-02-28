view: b221355784 {
  sql_table_name: public.accidents ;;

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
