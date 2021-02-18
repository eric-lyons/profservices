- dashboard: icon_dash
  title: icon dash
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  elements:
  - title: ''
    name: ''
    model: eric_the_redshift
    explore: airports
    type: single_value
    fields: [airports.full_name]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      County: airports.county
    row: 20
    col: 0
    width: 22
    height: 14
  - title: TEST TILE DRILL (Copy)
    name: TEST TILE DRILL (Copy)
    model: eric_the_redshift
    explore: airports
    type: single_value
    fields: [airports.count, airports.state, airports.act_date]
    pivots: [airports.state]
    sorts: [airports.state]
    limit: 50
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${airports.count}/2",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: legacy
      palette_id: looker_classic
    single_value_title: "% Responses < 2 hr SLA"
    conditional_formatting: [{type: between, value: [10000, 30000], background_color: "#33a02c",
        font_color: "#EA4335", color_application: {collection_id: legacy, palette_id: legacy_sequential3},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}, {type: between,
        value: [300000, 60000], background_color: "#28e834", font_color: "#1f3e5a",
        color_application: {collection_id: legacy, palette_id: legacy_diverging1},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}, {type: less
          than, value: 9999, background_color: "#e85345", font_color: !!null '', color_application: {
          collection_id: legacy, palette_id: legacy_diverging1}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    listen:
      County: airports.county
    row: 34
    col: 0
    width: 8
    height: 6
  - title: New Tile
    name: New Tile
    model: eric_the_redshift
    explore: airports
    type: single_value
    fields: [airports.count, airports.state, calculation_2]
    pivots: [airports.state]
    sorts: [airports.state]
    limit: 500
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${airports.count}/2",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {measure: calculation_2, based_on: airports.count, type: count_distinct,
        label: Calculation 2, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${airports.state}="New
          Jersey"'}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: legacy
      palette_id: looker_classic
    single_value_title: "% Responses < 2 hr SLA"
    conditional_formatting: [{type: between, value: [10000, 30000], background_color: "#33a02c",
        font_color: "#EA4335", color_application: {collection_id: legacy, palette_id: legacy_sequential3},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}, {type: between,
        value: [300000, 60000], background_color: "#28e834", font_color: "#1f3e5a",
        color_application: {collection_id: legacy, palette_id: legacy_diverging1},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}, {type: less
          than, value: 9999, background_color: "#e85345", font_color: !!null '', color_application: {
          collection_id: legacy, palette_id: legacy_diverging1}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    listen:
      County: airports.county
    row: 40
    col: 0
    width: 8
    height: 6
  - title: New Tile
    name: New Tile (2)
    model: eric_the_redshift
    explore: airports
    type: looker_wordcloud
    fields: [airports.full_name, airports.count]
    sorts: [airports.full_name]
    limit: 10
    color_application: undefined
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      County: airports.county
    row: 46
    col: 0
    width: 8
    height: 6
  - title: New Tile
    name: New Tile (3)
    model: eric_the_redshift
    explore: airports
    type: looker_column
    fields: [airports.full_name, airports.count]
    sorts: [airports.full_name]
    limit: 10
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    color_application: undefined
    listen:
      County: airports.county
    row: 52
    col: 0
    width: 8
    height: 6
  - title: ''
    name: " (2)"
    model: eric_the_redshift
    explore: airports
    type: looker_bar
    fields: [airports.full_name, airports.count]
    pivots: [airports.full_name]
    sorts: [airports.full_name]
    limit: 10
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${airports.count}*1000",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application: undefined
    series_types: {}
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      County: airports.county
    row: 14
    col: 5
    width: 8
    height: 6
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: <p style="font-family:Impact; size:36px">Title can be formatted here</p>
    row: 6
    col: 5
    width: 8
    height: 2
  - title: New Tile
    name: New Tile (4)
    model: eric_the_redshift
    explore: airports
    type: single_value
    fields: [airports.latitude]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 34
    col: 8
    width: 8
    height: 6
  - title: Table Vis
    name: Table Vis
    model: eric_the_redshift
    explore: airports
    type: looker_grid
    fields: [airports.latitude, airports.county]
    sorts: [airports.latitude]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 8
    col: 5
    width: 8
    height: 6
  - title: New Tile
    name: New Tile (5)
    model: eric_the_redshift
    explore: airports
    type: single_value
    fields: [airports.latitude]
    sorts: [airports.latitude]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    row: 0
    col: 8
    width: 8
    height: 6
  filters:
  - name: County
    title: County
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: eric_the_redshift
    explore: airports
    listens_to_filters: []
    field: airports.county
