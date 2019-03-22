view: shipbot_report {
  sql_table_name: moltin.shipbot_report ;;

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: fulfillment_cost {
    type: number
    sql: ${TABLE}.fulfillment_cost ;;
  }

  dimension: line_item_id {
    type: string
    sql: ${TABLE}.line_item_id ;;
  }

  dimension: line_item_name {
    type: string
    sql: ${TABLE}.line_item_name ;;
  }

  dimension: line_item_qty {
    type: number
    sql: ${TABLE}.line_item_qty ;;
  }

  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }

  dimension: shipping_zone {
    type: string
    sql: ${TABLE}.shipping_zone ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: total_items_qty {
    type: number
    sql: ${TABLE}.total_items_qty ;;
  }

  dimension: ups_zone {
    type: string
    sql: ${TABLE}.ups_zone ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      line_item_name,
      orders.bill_to_last_name,
      orders.id,
      orders.bill_to_first_name,
      orders.ship_to_first_name,
      orders.ship_to_last_name
    ]
  }
}
