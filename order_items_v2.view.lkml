view: order_items_v2 {
  view_label: "Order Items"
  sql_table_name: moltin.order_items_v2 ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
    hidden: yes
  }

  dimension: cart_identifier {
    type: string
    sql: ${TABLE}.cart_identifier ;;
    hidden: yes
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
    hidden: yes
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.product_id ;;
    hidden: yes
  }

  dimension: quantity_hidden {
    type: number
    sql: ${TABLE}.quantity ;;
    hidden: yes
  }

  measure: quantity {
    type: sum
    sql: ${quantity_hidden} ;;
    view_label: "Order Information"
  }

  dimension: sku {
    label: "SKU"
    type: string
    sql: ${TABLE}.sku ;;
    hidden: yes
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
    hidden: yes
  }

  dimension: total_retail {
    type: number
    sql: ${TABLE}.total_retail ;;
    hidden: yes
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
    hidden: yes
  }

  dimension: unit_price {
    type: number
    sql: ${TABLE}.unit_price ;;
    hidden: yes
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
    hidden: yes
  }

  #measure: count {
   # type: count
#    drill_fields: [id]
#  }
}
