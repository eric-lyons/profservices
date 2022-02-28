view: carriers {
  sql_table_name: public.carriers ;;

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

  dimension: dummycontact {
    label: "Contact Us Tab"
    type: string
    sql: ${TABLE}.nickname ;;
    html: <div class="tc w-100 h-100 flex items-center flex-column overflow-hidden" style="background:#FFFF">

      <div class='flex flex-grow-1 items-center' style="font-size:0.9em;color:white;">

      <a href="mailto:JWEITZ@its.jnj.com" target="_top"> Contact Us </a> </div>

      </div> ;;
  }

  measure: count {
    type: count
    drill_fields: [name, nickname]
  }
}
