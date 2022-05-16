view: flights {
  sql_table_name: public.flights ;;

  dimension: arr_delay {
    label: "ARRIVAL DELAY"
    type: number
    sql: ${TABLE}.arr_delay ;;
  }

  dimension_group: arr {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.arr_time ;;
    html: {{ rendered_value | date: "%b %d, %y" }} ;;
  }

  dimension: cancelled {
    #label: "{{ _user_attributes['my_cat'] }}"
    type: string
    sql: ${TABLE}.cancelled ;;
  }

  dimension: carrier {
    type: string
    sql: ${TABLE}.carrier ;;
  }

  dimension: dep_delay {
    type: number
    sql: ${TABLE}.dep_delay ;;
  }

  dimension_group: dep {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.dep_time ;;
  }

  dimension: destination {
    type: string
    sql: ${TABLE}.destination ;;
  }

  dimension: distance {
    type: number
    sql: ${TABLE}.distance ;;
  }

  dimension: diverted {
    type: string
    sql: ${TABLE}.diverted ;;
  }

  dimension: flight_num {
    type: string
    sql: ${TABLE}.flight_num ;;
  }


  dimension: flight_time {
    type: number
    sql: ${TABLE}.flight_time ;;
  }

  dimension: id2 {
    type: number
    sql: ${TABLE}.id2 ;;
  }


  measure: test_number_measure2 {
    type: number
    sql: ${TABLE}.id2 ;;
  }


  measure: test_number_measure3 {
    type: number
    sql: ${TABLE}.id2 ;;
  }


  measure: test_number_measure4 {
    type: number
    sql: ${TABLE}.id2 ;;
  }


  measure: test_number_measure6 {
    type: number
    sql: ${TABLE}.id2 ;;
  }


  measure: test_number_measure7 {
    type: number
    sql: ${TABLE}.id2 ;;
  }


  measure: test_number_measure8 {
    type: number
    sql: ${TABLE}.id2 ;;
  }


  measure: test_number_measure9 {
    type: number
    sql: ${TABLE}.id2 ;;
  }


  measure: test_number_measure10 {
    type: number
    sql: ${TABLE}.id2 ;;
  }

  measure: test_number_measure {
    type: number
    sql: ${TABLE}.id2 ;;
  }

  dimension: origin {
    type: string
    sql: concat(' ', ${TABLE}.origin) ;;
  }

  dimension: tail_num {
    type: string
    sql: ${TABLE}.tail_num ;;
  }

  measure: dummy {
    type: number
    sql: 1=1 ;;
    drill_fields: [tail_num,origin,taxi_in]
  }

  dimension: taxi_in {
    type: number
    sql: ${TABLE}.taxi_in ;;
  }

  dimension: created_week_ending_sunday {
    type: date_week
    sql: DATEADD(day, 7, ${arr_date});;
    datatype: date
  }

  dimension: taxi_out {
    type: number
    sql: ${TABLE}.taxi_out ;;
    # link: {label: "Fake Drill" url:"{{ dummy._link }}" }
    html: <a href="{{ dummy._link }}" target="_self"> {{value}}</a>;;
  }

  measure: total_distance {
    type: sum
    sql: ${distance} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
