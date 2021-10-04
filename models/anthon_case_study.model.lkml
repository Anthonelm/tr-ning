connection: "snowlooker"

# include all the views
include: "/views/**/*.view"

datagroup: anthon_case_study_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: anthon_case_study_default_datagroup

explore: hello {}

explore: items {}

explore: carts {
  join: items {
    type: left_outer
    sql_on: ${carts.item_id} = ${items.id} ;;
    relationship: many_to_one
  }

  join: orders {
    type: left_outer
    sql_on: ${carts.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: users {}

explore: orders {
  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: 5k_lines {}

explore: product_amount {}
