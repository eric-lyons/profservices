include: "*flights.view.lkml"
view: extended_flights {
  extends: [flights]
  sql_table_name: (SELECT * FROM public.flights WHERE cancelled = False);;

  # dimension: cancelled {
  #   label: "New Cancelled"
  #   type: string
  #   sql: ${TABLE}.cancelled ;;
  # }
}
