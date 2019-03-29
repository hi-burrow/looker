view: orders_v3 {
derived_table: {
  sql: WITH orders_v3 as (SELECT orders_v2.*, order_item.id as order_item_id, order_item.type as order_item_type
FROM orders_v2 LEFT JOIN UNNEST(items) as order_item),

 full_order as (SELECT orders_v3.*
, order_items_v2.created_at as order_item_created_at
, order_items_v2.updated_at as order_item_updated_at
, order_items_v2.quantity as order_item_quantity
, order_items_v2.cart_identifier  as order_item_cart_identifier
, order_items_v2.title as order_item_title
, order_items_v2.sku as order_item_sku
, order_items_v2.unit_price as order_item_unit_price
, order_items_v2.total_retail as order_item_total_retail
, order_items_v2.product_id as order_item_product_id
FROM orders_v3  LEFT OUTER JOIN order_items_v2 on orders_v3.order_item_id = order_items_v2.id),

orders_v4 as (SELECT
row_number() OVER(PARTITION BY id) as row_num
, id
, created_at
, updated_at
, customer_id
, customer_email
, payment
, shipping
, status_value
, subtotal
, total
, currency_code
, ship_to_first_name
, ship_to_last_name
, ship_to_address_1
, ship_to_address_2
, ship_to_postcode
, ship_to_country_code
, ship_to_company
, ship_to_city
, ship_to_phone
, ship_to_county
, bill_to_first_name
, bill_to_last_name
, bill_to_address_1
, bill_to_address_2
, bill_to_postcode
, bill_to_country_code
, bill_to_company
, bill_to_city
, bill_to_county
, shipping_order
, courier_shipping
, discount_code
, return_reason_desc
, return_reason
, partial_refund_reason
, discount_amount_value
, partial_refund_amount_value
, taxes_collected_value
, totals_raw_subtotal
, totals_raw_total
, totals_raw_tax
, payment_id
, affirm_charge_id
, inventory_estimate
, return_date
, ship_date
, delivery_date
, signature
, text_updates
, stitchlabs_id
, klaussner_fulfillment_id
, shipbob_fulfillment_id
, klaussner_tracking_code
, shipbob_tracking_code
, braintree_charge_id
, shipping_date
, order_issue
, order_cancelled
, klaussner_est_delivery_date
, shipbob_est_delivery_date
, ARRAY_AGG(struct(order_item_id,order_item_created_at,order_item_updated_at,order_item_quantity,order_item_cart_identifier,order_item_title,order_item_sku,order_item_unit_price,order_item_total_retail,order_item_product_id,order_item_type)) OVER (partition by id) as order_item
FROM full_order)

SELECT
*
FROM orders_v4
WHERE row_num = 1 ;;

}

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
    view_label: "Order Information"
  }

  dimension: affirm_charge_id_hidden {
    type: string
    sql: ${TABLE}.affirm_charge_id ;;
    hidden:  yes
  }

  dimension: bill_to_address_1 {
    type: string
    sql: ${TABLE}.bill_to_address_1 ;;
    hidden: yes
  }

  dimension: bill_to_address_2 {
    type: string
    sql: ${TABLE}.bill_to_address_2 ;;
    hidden: yes
  }

  dimension: bill_to_city {
    type: string
    sql: ${TABLE}.bill_to_city ;;
    hidden: yes
  }

  dimension: bill_to_company {
    type: string
    sql: ${TABLE}.bill_to_company ;;
    hidden: yes
  }

  dimension: bill_to_country_code {
    type: string
    sql: ${TABLE}.bill_to_country_code ;;
    hidden: yes
  }

  dimension: bill_to_county {
    type: string
    sql: ${TABLE}.bill_to_county ;;
    hidden: yes
  }

  dimension: bill_to_first_name {
    type: string
    sql: ${TABLE}.bill_to_first_name ;;
    hidden: yes
  }

  dimension: bill_to_last_name {
    type: string
    sql: ${TABLE}.bill_to_last_name ;;
    hidden: yes
  }

  dimension: bill_to_postcode {
    type: string
    sql: ${TABLE}.bill_to_postcode ;;
    hidden: yes
  }

  dimension: braintree_charge_id {
    type: string
    sql: ${TABLE}.braintree_charge_id ;;
    hidden: yes
  }

  dimension: courier_shipping {
    type: string
    sql: ${TABLE}.courier_shipping ;;
    hidden: yes
  }

  dimension_group: order {
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
    view_label: "Order Information"
  }

  dimension: currency_code {
    type: string
    sql: ${TABLE}.currency_code ;;
    hidden: yes
  }

  dimension: customer_email {
    type: string
    sql: ${TABLE}.customer_email ;;
    hidden: yes
  }

  dimension: customer_id {
    label: "Customer ID"
    type: string
    sql: ${TABLE}.customer_id ;;
    view_label: "Customer"
  }

  dimension_group: delivery {
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
    sql: ${TABLE}.delivery_date ;;
    view_label: "Shipping"
  }

  dimension: discount_amount_value_hidden {
    type: number
    sql: ${TABLE}.discount_amount_value / 100;;
    hidden: yes
  }

  dimension: discount_code {
    type: string
    sql: ${TABLE}.discount_code ;;
    view_label: "Revenue"
  }

  dimension: inventory_estimate {
    type: string
    sql: ${TABLE}.inventory_estimate ;;
    hidden: yes
  }

  dimension_group: klaussner_est_delivery {
    label: "Klaussner Estimated Delivery"
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
    sql: ${TABLE}.klaussner_est_delivery_date ;;
    view_label: "Shipping"
  }

  dimension: klaussner_fulfillment_id {
    type: string
    sql: ${TABLE}.klaussner_fulfillment_id ;;
    hidden: yes
  }

  dimension: klaussner_tracking_code {
    type: string
    sql: ${TABLE}.klaussner_tracking_code ;;
    hidden: yes
  }

  dimension: order_cancelled {
    type: string
    sql: ${TABLE}.order_cancelled ;;
    hidden: yes
  }

  dimension: order_issue {
    type: string
    sql: ${TABLE}.order_issue ;;
    hidden: yes
  }

  dimension: partial_refund_amount_value_hidden {
    type: number
    sql: ${TABLE}.partial_refund_amount_value / 100 ;;
    hidden: yes
  }

  dimension: partial_refund_reason {
    type: string
    sql: ${TABLE}.partial_refund_reason ;;
    view_label: "Returns & Refunds"
  }

  dimension: payment_status {
    type: string
    sql: ${TABLE}.payment ;;
    view_label: "Revenue"
  }

  dimension: payment_id {
    type: string
    sql: ${TABLE}.payment_id ;;
    hidden: yes
  }

  dimension_group: return {
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
    sql: ${TABLE}.return_date ;;
    view_label: "Returns & Refunds"
  }

  dimension: return_reason {
    type: string
    sql: ${TABLE}.return_reason ;;
    view_label: "Returns & Refunds"
  }

  dimension: return_reason_desc {
    type: string
    sql: ${TABLE}.return_reason_desc ;;
    hidden: yes
  }

  dimension_group: ship {
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
    sql: ${TABLE}.ship_date ;;
    view_label: "Shipping"
    hidden: yes
  }

  dimension: ship_to_address_1 {
    type: string
    sql: ${TABLE}.ship_to_address_1 ;;
    hidden: yes
  }

  dimension: ship_to_address_2 {
    type: string
    sql: ${TABLE}.ship_to_address_2 ;;
    hidden: yes
  }

  dimension: ship_to_city {
    label: "City"
    type: string
    sql: ${TABLE}.ship_to_city ;;
    view_label: "Customer"
  }

  dimension: ship_to_company {
    label: "Company"
    type: string
    sql: ${TABLE}.ship_to_company ;;
    view_label: "Customer"
  }

  dimension: ship_to_country_code {
    label: "Country"
    type: string
    sql: ${TABLE}.ship_to_country_code ;;
    view_label: "Customer"
    map_layer_name: countries
  }

  dimension: ship_to_county {
    label: "State"
    type: string
    sql: ${TABLE}.ship_to_county ;;
    view_label: "Customer"
    map_layer_name: us_states
  }

  dimension: ship_to_first_name {
    type: string
    sql: ${TABLE}.ship_to_first_name ;;
    hidden: yes
  }

  dimension: ship_to_last_name {
    type: string
    sql: ${TABLE}.ship_to_last_name ;;
    hidden: yes
  }

  dimension: ship_to_phone {
    type: string
    sql: ${TABLE}.ship_to_phone ;;
    hidden: yes
  }

  dimension: ship_to_postcode {
    label: "Zip Code"
    type: string
    sql: ${TABLE}.ship_to_postcode ;;
    view_label: "Customer"
    map_layer_name: us_zipcode_tabulation_areas
  }

  dimension_group: shipbob_est_delivery {
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
    sql: ${TABLE}.shipbob_est_delivery_date ;;
    hidden: yes
  }

  dimension: shipbob_fulfillment_id {
    type: string
    sql: ${TABLE}.shipbob_fulfillment_id ;;
    hidden: yes
  }

  dimension: shipbob_tracking_code {
    type: string
    sql: ${TABLE}.shipbob_tracking_code ;;
    hidden: yes
  }

  dimension: shipping {
    label: "Fulfillment Status"
    type: string
    sql: ${TABLE}.shipping ;;
    view_label: "Shipping"
  }

  dimension_group: shipping {
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
    sql: CASE WHEN ${TABLE}.shipping_date IS NOT NULL THEN ${TABLE}.shipping_date WHEN ${TABLE}.ship_date IS NOT NULL
      THEN ${TABLE}.ship_date END;;
    view_label: "Shipping"
  }

  dimension: shipping_order {
    type: string
    sql: ${TABLE}.shipping_order ;;
    hidden: yes
  }

  dimension: signature {
    type: yesno
    sql: ${TABLE}.signature ;;
    hidden: yes
  }

  dimension: status_value {
    label: "Order Status"
    type: string
    sql: ${TABLE}.status_value ;;
    view_label: "Order Information"
  }

  dimension: stitchlabs_id {
    type: string
    sql: ${TABLE}.stitchlabs_id ;;
    hidden: yes
  }

  dimension: subtotal_hidden {
    type: number
    sql: ${TABLE}.subtotal/100 ;;
    hidden: yes
  }

  dimension: taxes_collected_value_hidden {
    type: number
    sql: ${TABLE}.taxes_collected_value/100 ;;
    hidden: yes
  }

  dimension: text_updates {
    type: string
    sql: ${TABLE}.text_updates ;;
    hidden: yes
  }

  dimension: total_hidden {
    type: number
    sql: ${TABLE}.total / 100 ;;
    hidden: yes
  }

  dimension: totals_raw_subtotal_hidden {
    type: number
    sql: ${TABLE}.totals_raw_subtotal/100 ;;
    hidden: yes
  }

  dimension: totals_raw_tax_hidden {
    type: number
    sql: ${TABLE}.totals_raw_tax / 100;;
    hidden: yes
  }

  dimension: totals_raw_total_hidden {
    type: number
    sql: ${TABLE}.totals_raw_total / 100;;
    hidden: yes
  }


  dimension_group: order_update {
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
    view_label: "Order Information"
  }

  dimension: order_item {
    type: string
    sql: ${TABLE}.order_item ;;
    hidden: yes
  }

  measure: most_expensive_item {
    type: max
    sql: ${order_item.item_amount} ;;
  }

  dimension: number_of_items {
    type: string
    sql: (select count(*) from unnest(${order_item})) ;;
  }

}


view: order_item {

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.order_item_id ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.order_item_type ;;
  }

  dimension: created_at {
    type: string
    sql: ${TABLE}.order_item_created_at ;;
  }

  dimension: updated_at {
    hidden: yes
    type: string
    sql: ${TABLE}.order_item_updated_at ;;
  }

  dimension: quantity {
    type: string
    sql: ${TABLE}.order_item_quantity ;;
  }

  dimension: cart_identifier {
    type: string
    sql: ${TABLE}.order_item_cart_identifier ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.order_item_title ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.order_item_sku ;;
  }

  dimension: unit_price {
    type: string
    sql: ${TABLE}.order_item_unit_price ;;
  }

  dimension: total_retail {
    type: string
    sql: ${TABLE}.order_item_total_retail ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.order_item_product_id ;;
  }

  dimension: item_amount {
    type: number
    sql: ${unit_price} * ${quantity} ;;
  }

  measure: total_amount {
    type: sum
    sql: ${item_amount} ;;
    value_format_name: usd
  }

}
