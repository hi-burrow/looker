view: pre_orders {
  sql_table_name: moltin.pre_orders ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: bill_to_address_1 {
    type: string
    sql: ${TABLE}.bill_to_address_1 ;;
  }

  dimension: bill_to_address_2 {
    type: string
    sql: ${TABLE}.bill_to_address_2 ;;
  }

  dimension: bill_to_city {
    type: string
    sql: ${TABLE}.bill_to_city ;;
  }

  dimension: bill_to_company {
    type: string
    sql: ${TABLE}.bill_to_company ;;
  }

  dimension: bill_to_country_code {
    type: string
    sql: ${TABLE}.bill_to_country_code ;;
  }

  dimension: bill_to_country_value {
    type: string
    sql: ${TABLE}.bill_to_country_value ;;
  }

  dimension: bill_to_county {
    type: string
    sql: ${TABLE}.bill_to_county ;;
  }

  dimension: bill_to_customer_email {
    type: string
    sql: ${TABLE}.bill_to_customer_email ;;
  }

  dimension: bill_to_customer_id {
    type: string
    sql: ${TABLE}.bill_to_customer_id ;;
  }

  dimension: bill_to_first_name {
    type: string
    sql: ${TABLE}.bill_to_first_name ;;
  }

  dimension: bill_to_id {
    type: string
    sql: ${TABLE}.bill_to_id ;;
  }

  dimension: bill_to_last_name {
    type: string
    sql: ${TABLE}.bill_to_last_name ;;
  }

  dimension: bill_to_phone {
    type: string
    sql: ${TABLE}.bill_to_phone ;;
  }

  dimension: bill_to_postcode {
    type: string
    sql: ${TABLE}.bill_to_postcode ;;
  }

  dimension: courier_shipping {
    type: string
    sql: ${TABLE}.courier_shipping ;;
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

  dimension: currency_code {
    type: string
    sql: ${TABLE}.currency_code ;;
  }

  dimension: customer_email {
    type: string
    sql: ${TABLE}.customer_email ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.customer_id ;;
  }

  dimension: discount_amount_raw_with_tax {
    type: string
    sql: ${TABLE}.discount_amount_raw_with_tax ;;
  }

  dimension: discount_amount_value {
    type: string
    sql: ${TABLE}.discount_amount_value ;;
  }

  dimension: discount_code {
    type: string
    sql: ${TABLE}.discount_code ;;
  }

  dimension: gateway_value {
    type: string
    sql: ${TABLE}.gateway_value ;;
  }

  dimension: partial_refund_amount_raw_with_tax {
    type: string
    sql: ${TABLE}.partial_refund_amount_raw_with_tax ;;
  }

  dimension: partial_refund_amount_value {
    type: string
    sql: ${TABLE}.partial_refund_amount_value ;;
  }

  dimension: partial_refund_reason {
    type: string
    sql: ${TABLE}.partial_refund_reason ;;
  }

  dimension: return_reason {
    type: string
    sql: ${TABLE}.return_reason ;;
  }

  dimension: return_reason_desc {
    type: string
    sql: ${TABLE}.return_reason_desc ;;
  }

  dimension: ship_to_address_1 {
    type: string
    sql: ${TABLE}.ship_to_address_1 ;;
  }

  dimension: ship_to_address_2 {
    type: string
    sql: ${TABLE}.ship_to_address_2 ;;
  }

  dimension: ship_to_city {
    type: string
    sql: ${TABLE}.ship_to_city ;;
  }

  dimension: ship_to_company {
    type: string
    sql: ${TABLE}.ship_to_company ;;
  }

  dimension: ship_to_country_code {
    type: string
    sql: ${TABLE}.ship_to_country_code ;;
  }

  dimension: ship_to_country_value {
    type: string
    sql: ${TABLE}.ship_to_country_value ;;
  }

  dimension: ship_to_county {
    type: string
    sql: ${TABLE}.ship_to_county ;;
  }

  dimension: ship_to_customer_email {
    type: string
    sql: ${TABLE}.ship_to_customer_email ;;
  }

  dimension: ship_to_customer_id {
    type: string
    sql: ${TABLE}.ship_to_customer_id ;;
  }

  dimension: ship_to_first_name {
    type: string
    sql: ${TABLE}.ship_to_first_name ;;
  }

  dimension: ship_to_id {
    type: string
    sql: ${TABLE}.ship_to_id ;;
  }

  dimension: ship_to_last_name {
    type: string
    sql: ${TABLE}.ship_to_last_name ;;
  }

  dimension: ship_to_phone {
    type: string
    sql: ${TABLE}.ship_to_phone ;;
  }

  dimension: ship_to_postcode {
    type: string
    sql: ${TABLE}.ship_to_postcode ;;
  }

  dimension: shipping_company {
    type: string
    sql: ${TABLE}.shipping_company ;;
  }

  dimension: shipping_id {
    type: string
    sql: ${TABLE}.shipping_id ;;
  }

  dimension: shipping_order {
    type: string
    sql: ${TABLE}.shipping_order ;;
  }

  dimension: shipping_price {
    type: string
    sql: ${TABLE}.shipping_price ;;
  }

  dimension: shipping_price_value {
    type: string
    sql: ${TABLE}.shipping_price_value ;;
  }

  dimension: shipping_title {
    type: string
    sql: ${TABLE}.shipping_title ;;
  }

  dimension: status_value {
    type: string
    sql: ${TABLE}.status_value ;;
  }

  dimension: subtotal {
    type: string
    sql: ${TABLE}.subtotal ;;
  }

  dimension: taxes_collected_raw_with_tax {
    type: string
    sql: ${TABLE}.taxes_collected_raw_with_tax ;;
  }

  dimension: taxes_collected_value {
    type: string
    sql: ${TABLE}.taxes_collected_value ;;
  }

  dimension: total {
    type: string
    sql: ${TABLE}.total ;;
  }

  dimension: totals_raw_shipping_price {
    type: string
    sql: ${TABLE}.totals_raw_shipping_price ;;
  }

  dimension: totals_raw_subtotal {
    type: string
    sql: ${TABLE}.totals_raw_subtotal ;;
  }

  dimension: totals_raw_tax {
    type: string
    sql: ${TABLE}.totals_raw_tax ;;
  }

  dimension: totals_raw_total {
    type: string
    sql: ${TABLE}.totals_raw_total ;;
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
    drill_fields: [id, bill_to_last_name, bill_to_first_name, ship_to_first_name, ship_to_last_name]
  }
}
