view: controller_dt {

 derived_table: {
    sql:

    SELECT
         *
      FROM
      {% if controller_dt.row._in_query %}
      ${dt_a.SQL_TABLE_NAME}
      {% elsif controller_dt.id._in_query %}
      ${dt_b.SQL_TABLE_NAME}
      {% else %}
      ${dt_c.SQL_TABLE_NAME}
      {% endif %}

 ;;
}

  measure: count {
    type: count
  }

  measure: count_distinct {
    type: count_distinct
    sql: ${id} ;;

  }

  dimension: row {
    type: string
    sql: ${TABLE}.row ;;
    primary_key: yes
  }

  dimension:id {
    type: string
    sql: ${TABLE}.id ;;
  }
  }
