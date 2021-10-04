view: carts {
  sql_table_name: `sandbox_looker.carts`
    ;;

  dimension: item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.item_id ;;
  }

  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  measure: count {
    type: count
    drill_fields: [items.id, orders.id]
  }
}
