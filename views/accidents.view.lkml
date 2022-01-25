view: accidents {
  sql_table_name: public.accidents ;;
  drill_fields: [id]

  parameter: dashboards {
    type: string
    allowed_value:{ value:"United States"}
    allowed_value:{ value:"Korea"}
    allowed_value:{ value:"Russia"}

  }

  dimension: eric_test_dim {
    sql: 1=1 ;;
    label: "Navigation"
    html:

      {% if dashboards._parameter_value == "London" %}
      <span style="text-align:left; background-color=grey;">
      <button class=”button pill-shape” style="background-color:black;color:white;"><font color="red">London</font></button><br>
      <button class=”button pill-shape”> <a href="/dashboards/946?State=&Dashboards=Paris">Paris </a></button><br>
      <button class=”button pill-shape”> <a href="/dashboards/946?State=&Dashboards=Tokyo">Tokyo </a></button>
      </div>
      {% elsif dashboards._parameter_value == "Paris" %}
      <div style="text-align:left; background-color=grey;">
      <button class=”button pill-shape”> <a href="/dashboards/946?State=&Dashboards=London"> London </a> </font></button><br>
      <button class=”button pill-shape” style="background-color:black;color:white;"><font color="red"> Paris</button><br>
      <button class=”button pill-shape”> <a href="/dashboards/946?State=&Dashboards=Tokyo"> Tokyo </a></button>
      </div>
      {% else %}
      <div style="text-align:left; background-color=grey;">
      <button class=”button pill-shape”> <a href="/dashboards/946?State=&Dashboards=London">London</a></font></button><br>
      <button class=”button pill-shape”> <a href="/dashboards/946?State=&Dashboards=Paris"> Paris </a> </button><br>
      <button class=”button pill-shape” style="background-color:black;color:white;"><font color="red"> Tokyo</button>
      </span>

      {% endif %};;
  }

  dimension: london {
    ### SELECT this When on London Dash
    sql: 1=1 ;;
    label: "Navigation"
    #hidden: yes
    html:

      <span style="text-align:left; background-color=grey;">
      <button class=”button pill-shape” style="background-color:black;color:white;"> <font color="red"> London</font></button>
      <button class=”button pill-shape”> <a href="/dashboards-next/5490">Paris </a></button>
      <button class=”button pill-shape”> <a href="/dashboards-next/5488">Tokyo </a></button>

      </span>;;
  }

  dimension: Paris {
    ### SELECT this When on Paris Dash
    sql: 1=1 ;;
    label: "Navigation"
    #hidden: yes
    html:
      <span style="text-align:left; background-color=grey;">
      <button class=”button pill-shape”> <a href="dashboards-next/5489"> London </a> </button>
      <button class=”button pill-shape” style="background-color:black;color:white;"> <font color="red"> <a href="/dashboards-next/5490">Paris</a> </font> </button>
      <button class=”button pill-shape”> <a href="/dashboards-next/5488">Tokyo </a></button>

      </span>;;
  }

  dimension: Tokyo {
    ### SELECT this When on Paris Dash
    sql: 1=1 ;;
    label: "Navigation"
    #hidden: yes
    html:

      <span style="text-align:left; background-color=grey;">
      <button class=”button pill-shape” ><a href="dashboards-next/5489"> London </a></button>
      <button class=”button pill-shape”> <a href="/dashboards-next/5490">Paris </a></button>
      <button class=”button pill-shape” style="background-color:black;color:white;"><font color="red"> <a href="/dashboards-next/5488">Tokyo </font></a></button>

      </span>;;
  }


  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: accident_number {
    type: string
    sql: ${TABLE}.accident_number ;;
  }

  dimension: air_carrier {
    type: string
    sql: ${TABLE}.air_carrier ;;
  }

  dimension: aircraft_category {
    type: string
    sql: ${TABLE}.aircraft_category ;;
  }

  dimension: aircraft_damage {
    type: string
    sql: ${TABLE}.aircraft_damage ;;
  }

  dimension: airport_code {
    type: string
    sql: ${TABLE}.airport_code ;;
  }

  dimension: airport_name {
    type: string
    sql: ${TABLE}.airport_name ;;
  }

  dimension: amateur_built {
    type: string
    sql: ${TABLE}.amateur_built ;;
    drill_fields: [country,broad_phase_of_flight]
  }

  dimension: broad_phase_of_flight {
    type: string
    sql: ${TABLE}.broad_phase_of_flight ;;
  }

  dimension: country {
    type: string
    label: "sum_of_bogus_1額"
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: engine_type {
    type: string
    sql: ${TABLE}.engine_type ;;
  }

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

  dimension: event_id {
    type: string
    sql: ${TABLE}.event_id ;;
  }

  dimension: far_description {
    type: string
    sql: ${TABLE}.far_description ;;
  }

  dimension: injury_severity {
    type: string
    sql: ${TABLE}.injury_severity ;;
  }

  dimension: investigation_type {
    type: string
    sql: ${TABLE}.investigation_type ;;
  }

  dimension: latitude {
    type: string
    sql: ${TABLE}.latitude ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: longitude {
    type: string
    sql: ${TABLE}.longitude ;;
  }

  dimension: make {
    type: string
    sql: ${TABLE}.make ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: number_of_engines {
    type: string
    sql: ${TABLE}.number_of_engines ;;
  }

  dimension: number_of_fatalities {
    type: string
    sql: ${TABLE}.number_of_fatalities ;;
  }

  dimension: number_of_minor_injuries {
    type: string
    sql: ${TABLE}.number_of_minor_injuries ;;
  }

  dimension: number_of_serious_injuries {
    type: string
    sql: ${TABLE}.number_of_serious_injuries ;;
  }

  dimension: number_of_uninjured {
    type: string
    sql: ${TABLE}.number_of_uninjured ;;
  }

measure: dimension {
    type: date
    convert_tz: no
    sql: MAX((SELECT ${TABLE}.event_date FROM UNION SELECT ${TABLE}.publication_date FROM ${accidents.SQL_TABLE_NAME} LIMIT 1));;
  }

  dimension_group: publication {
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
    sql: ${TABLE}.publication_date ;;
  }

  dimension: greatest_dim {
    type: date
    sql: GREATEST(${publication_date}, ${event_date}) ;;
  }

  measure: greater_greatest {
    type: date
    sql: MAX(${greatest_dim});;
  }

  dimension: purpose_of_flight {
    type: string
    sql: ${TABLE}.purpose_of_flight ;;
  }

  dimension: registration_number {
    type: string
    sql: ${TABLE}.registration_number ;;
  }

  dimension: report_status {
    type: string
    sql: ${TABLE}.report_status ;;
  }

  measure: total_events {
    type: count_distinct
    sql: ${accident_number} ;;
  }

  dimension: schedule {
    type: string
    sql: ${TABLE}.schedule ;;
  }

  dimension: weather_condition {
    type: string
    sql: ${TABLE}.weather_condition ;;
  }

  measure: count {
    type: count
    drill_fields: [id, airport_name]
  }
}
