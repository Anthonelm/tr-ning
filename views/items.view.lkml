view: items {
  sql_table_name: `sandbox_looker.items`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: libelle {
    type: string
    sql: ${TABLE}.libelle ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  measure: count {
    type: count
    drill_fields: [id, carts.count]
  }

measure: total_sales {
  type: sum
  sql: ${price} ;;
}
}
