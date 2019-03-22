connection: "bq_moltin"

# include all the views
include: "*.view"

datagroup: poc_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: poc_default_datagroup


explore: sku_v2 {}

explore: order_items_v2 {}

explore: orders_v2 {
  label: "Orders"
  join: orders_v2_items {
    view_label: "Orders"
    sql: LEFT JOIN UNNEST(${orders_v2.items}) as orders_v2_items ;;
    relationship: one_to_many
  }
  join: order_items_v2 {
  view_label: "Order Items"
  sql_on: ${orders_v2_items.id} = ${order_items_v2.id}  ;;
  relationship: one_to_many
  }
  join: sku_v2 {
    view_label: "SKU"
    sql_on:  ${order_items_v2.sku} = ${sku_v2.sku} ;;
    relationship: one_to_many
  }
}


#explore: sku_breakout {}

#explore: sku_c3 {}

#explore: sku_details {}

#explore: variants {}
