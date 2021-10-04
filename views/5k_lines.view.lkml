view: 5k_lines {
  sql_table_name: `sandbox_looker.5k_lines`
    ;;

  dimension: num {
    type: number
    sql: ${TABLE}.num ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
