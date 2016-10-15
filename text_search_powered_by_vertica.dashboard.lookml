- dashboard: text_search_powered_by_vertica
  title: Text Search Powered By Vertica
  layout: tile
  tile_size: 100

  filters:
  - name: search_box
    type: string_filter
    default_value: 'server error'

  elements:

  - name: add_a_unique_name_1476471161
    title: 'Search Results'
    type: table
    model: text_search
    explore: search_udf_query
    dimensions: [search_udf_query.text]
    listen:
      search_box: search_udf_query.search_expression 
    sorts: [search_udf_query.text]
    limit: '500'
    column_limit: '50'
    query_timezone: UTC
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    series_types: {}
   