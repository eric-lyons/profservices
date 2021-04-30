view: airports {
  sql_table_name: public.airports ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: act_date {
    type: string
    sql: ${TABLE}.act_date ;;
  }

  dimension: aero_cht {
    type: string
    sql: ${TABLE}.aero_cht ;;
  }

  dimension: c_ldg_rts {
    type: string
    sql: ${TABLE}.c_ldg_rts ;;
  }

  dimension: cbd_dir {
    type: string
    sql: ${TABLE}.cbd_dir ;;
  }

  dimension: cbd_dist {
    type: number
    sql: ${TABLE}.cbd_dist ;;
  }

  filter: is_above_1000 {
    type: yesno
  }

  filter: is_in_houston {
    type: yesno
  }

  dimension: yesno_elevation {
    type: yesno
    sql: ${elevation} > 1000 ;;
  }

  dimension: in_Houston {
    type: yesno
    sql: ${city} = 'HOUSTON' ;;
  }

  parameter: AND_OR {
    type: unquoted
    allowed_value: {value: "AND" label:"AND"}
    allowed_value: { value:"OR" label:"AND"}
  }

  dimension: cert {
    type: string
    sql: ${TABLE}.cert ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: cntl_twr {
    type: string
    sql: ${TABLE}.cntl_twr ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.county ;;
  }

  dimension: cust_intl {
    type: string
    sql: ${TABLE}.cust_intl ;;
  }

  dimension: elevation {
    type: number
    sql: ${TABLE}.elevation + 1.12345678 ;;
    value_format: "0.00"
  }

  measure: average_Elev {
    type: average
    sql: ${elevation} + 10.12345678 ;;
    ##value_format: "decimal_0"
  }

  dimension: faa_dist {
    type: string
    sql: ${TABLE}.faa_dist ;;
  }

  dimension: faa_region {
    type: string
    sql: ${TABLE}.faa_region ;;
  }

  dimension: fac_type {
    type: string
    sql: ${TABLE}.fac_type ;;
  }

  dimension: fac_use {
    type: string
    sql: ${TABLE}.fac_use ;;
  }

  dimension: fed_agree {
    type: string
    sql: ${TABLE}.fed_agree ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}.full_name ;;
    link: {
      label: "Drill Dashboard"
      url: "/dashboards/dashboards-next/3791?Created+Year=2019&Gender=&Date+Granularity=Day&BREAK=1"
    }#
  }

  dimension: joint_use {
    type: string
    sql: ${TABLE}.joint_use ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;

    html:
    <font color="#4281c3">{{ rendered_value }}
    <i style="font-size: 70%;" class="fa fa-tachometer"></i>
    </font>
    ;;


  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: major {
    type: string
    sql: ${TABLE}.major ;;
  }

  dimension: mil_rts {
    type: string
    sql: ${TABLE}.mil_rts ;;
  }

  dimension: own_type {
    type: string
    sql: ${TABLE}.own_type ;;
  }

  dimension: site_number {
    type: string
    sql: ${TABLE}.site_number ;;
  }

  parameter: state_param {
    type: string
  }

  dimension: teset {
    sql: REPLACE({% parameter state_param %},' ', '\, ') ;;
    type: string
  }

  dimension: yesno {
    type: yesno
    sql: ${state} IN (REPLACE({% parameter state_param %},' ', '\, ')) ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  measure: count {
    type: count
    drill_fields: [id, full_name]
  }
}
