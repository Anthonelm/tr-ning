view: hello {
  sql_table_name: `sandbox_looker.hello`
    ;;

  dimension: greetings {
    type: string
    sql: ${TABLE}.greetings ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
