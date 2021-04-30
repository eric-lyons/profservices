view: a {
  derived_table: {
    sql: SELECT
          name,
          code,
          nickname
      FROM
          "public"."carriers"

        GROUP BY 1,2,3
 ;;
  }


  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: nickname {
    type: string
    sql: ${TABLE}.nickname ;;
  }

  filter: templated_filter {
    type: string
  }


  set: detail {
    fields: [code, name, nickname]
  }
}
