view: dt_a {
  derived_table: {
    sql:
      SELECT 12 as 'id',  1 as 'row'
              UNION ALL
              SELECT 14 as 'id', 2 as 'row'
              UNION ALL
              SELECT 13 as 'id', 3 as 'row'
              UNION ALL
              SELECT NULL as 'id', 4 as 'row'
              UNION ALL
              SELECT NULL as 'id', 5 as 'row'
              UNION ALL
              SELECT NULL as 'id', 6 as 'row'
              ;;

    }


    filter: id_filter {
      type: string
      suggest_dimension: id
      suggest_explore: dt_a
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

    # dimension: sum_of_bogus_1 {
    #   type: number
    #   label: "{{ _user_attributes['json_n_label_44']}}"
    #   sql: ${TABLE}."'sum_of_bogus_1額'" ;;
    # }


    # dimension: formatted_sum_of_bogus_2 {
    #   type: number
    #   label: "{{ _user_attributes['json_n_label_44'] | remove:'額' ]}}"
    #   sql: ${TABLE}."'sum_of_bogus_1額'" ;;
    # }

    # dimension: sum_of_bogus_2 {
    #   type: string
    #   label: "{{ _user_attributes['json_n_label_44']}}"
    #   sql: ${TABLE}."'sum_of_bogus_2額'" ;;
    # }

    # dimension: sum_of_bogus_3 {
    #   type: string
    #   label: "{{ _user_attributes['json_n_label_44']}}"
    #   sql: ${TABLE}."'sum_of_bogus_3額'" ;;
    # }

    # set: detail {
    #   fields: [sum_of_bogus_1, sum_of_bogus_2, sum_of_bogus_3]
    # }
  }
