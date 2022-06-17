view: test_dt {
    sql_table_name: (
      SELECT * FROM
      {% if test_dt.name._is_selected %}
        public.aircraft
      {% elsif test_dt.id._is_selected %}
        public.airports
      {% else %}
         public.carriers
      {% endif %} );;


dimension: name {
type: string
sql: ${TABLE}.name ;;
}

  dimension: id {
    type: string
    primary_key: yes
    sql: ${TABLE}.id ;;
    }

measure: count {
  type: count
}
}
