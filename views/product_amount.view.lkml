view: product_amount {
  sql_table_name: `sandbox_looker.product_amount`
    ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.product ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
