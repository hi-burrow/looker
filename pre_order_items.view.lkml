view: pre_order_items {
  sql_table_name: moltin.pre_order_items ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: arms_id {
    type: number
    sql: ${TABLE}.arms_id ;;
  }

  dimension: cart_identifier {
    type: string
    sql: ${TABLE}.cart_identifier ;;
  }

  dimension: color_id {
    type: string
    sql: ${TABLE}.color_id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }

  dimension: order_item_retail {
    type: number
    sql: ${TABLE}.order_item_retail ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.product_id ;;
  }

  dimension: product_price {
    type: number
    sql: ${TABLE}.product_price ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: size_id {
    type: number
    sql: ${TABLE}.size_id ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: tax_band {
    type: string
    sql: ${TABLE}.tax_band ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: tracking_id {
    type: string
    sql: ${TABLE}.tracking_id ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      orders.bill_to_last_name,
      orders.id,
      orders.bill_to_first_name,
      orders.ship_to_first_name,
      orders.ship_to_last_name
    ]
  }
}
