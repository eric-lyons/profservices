connection: "faa_redshift_22822"

include: "/b221355784/*.view.lkml"                # include all views in the views/ folder in this project


explore: b221355784 {
  aggregate_table: order_ids {
    materialization: {
      datagroup_trigger: orders_datagroup
    }
    query: {
      dimensions: [b221355784.event_month]
      measures: [b221355784.count_users]
    }
  }
}


datagroup: orders_datagroup {
  sql_trigger: select 7 ;;
}
