view: orders_v2_test {
  sql_table_name: moltin.orders_v2_test ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: affirm_charge_id {
    type: string
    sql: ${TABLE}.affirm_charge_id ;;
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

  dimension: bill_to_county {
    type: string
    sql: ${TABLE}.bill_to_county ;;
  }

  dimension: bill_to_first_name {
    type: string
    sql: ${TABLE}.bill_to_first_name ;;
  }

  dimension: bill_to_last_name {
    type: string
    sql: ${TABLE}.bill_to_last_name ;;
  }

  dimension: bill_to_postcode {
    type: string
    sql: ${TABLE}.bill_to_postcode ;;
  }

  dimension: braintree_charge_id {
    type: string
    sql: ${TABLE}.braintree_charge_id ;;
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
  }

  dimension: discount_amount_value {
    type: number
    sql: ${TABLE}.discount_amount_value ;;
  }

  dimension: discount_code {
    type: string
    sql: ${TABLE}.discount_code ;;
  }

  dimension: inventory_estimate {
    type: string
    sql: ${TABLE}.inventory_estimate ;;
  }

  dimension: items {
    hidden: yes
    sql: ${TABLE}.items ;;
  }

  dimension_group: klaussner_est_delivery {
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
  }

  dimension: klaussner_fulfillment_id {
    type: string
    sql: ${TABLE}.klaussner_fulfillment_id ;;
  }

  dimension: klaussner_tracking_code {
    type: string
    sql: ${TABLE}.klaussner_tracking_code ;;
  }

  dimension: order_cancelled {
    type: string
    sql: ${TABLE}.order_cancelled ;;
  }

  dimension: order_issue {
    type: string
    sql: ${TABLE}.order_issue ;;
  }

  dimension: partial_refund_amount_value {
    type: number
    sql: ${TABLE}.partial_refund_amount_value ;;
  }

  dimension: partial_refund_reason {
    type: string
    sql: ${TABLE}.partial_refund_reason ;;
  }

  dimension: payment {
    type: string
    sql: ${TABLE}.payment ;;
  }

  dimension: payment_id {
    type: string
    sql: ${TABLE}.payment_id ;;
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
  }

  dimension: return_reason {
    type: string
    sql: ${TABLE}.return_reason ;;
  }

  dimension: return_reason_desc {
    type: string
    sql: ${TABLE}.return_reason_desc ;;
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

  dimension: ship_to_county {
    type: string
    sql: ${TABLE}.ship_to_county ;;
  }

  dimension: ship_to_first_name {
    type: string
    sql: ${TABLE}.ship_to_first_name ;;
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
  }

  dimension: shipbob_fulfillment_id {
    type: string
    sql: ${TABLE}.shipbob_fulfillment_id ;;
  }

  dimension: shipbob_tracking_code {
    type: string
    sql: ${TABLE}.shipbob_tracking_code ;;
  }

  dimension: shipping {
    type: string
    sql: ${TABLE}.shipping ;;
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
    sql: ${TABLE}.shipping_date ;;
  }

  dimension: shipping_order {
    type: string
    sql: ${TABLE}.shipping_order ;;
  }

  dimension: signature {
    type: yesno
    sql: ${TABLE}.signature ;;
  }

  dimension: status_value {
    type: string
    sql: ${TABLE}.status_value ;;
  }

  dimension: stitchlabs_id {
    type: string
    sql: ${TABLE}.stitchlabs_id ;;
  }

  dimension: subtotal {
    type: number
    sql: ${TABLE}.subtotal ;;
  }

  dimension: taxes_collected_value {
    type: number
    sql: ${TABLE}.taxes_collected_value ;;
  }

  dimension: text_updates {
    type: string
    sql: ${TABLE}.text_updates ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.total ;;
  }

  dimension: totals_raw_subtotal {
    type: number
    sql: ${TABLE}.totals_raw_subtotal ;;
  }

  dimension: totals_raw_tax {
    type: number
    sql: ${TABLE}.totals_raw_tax ;;
  }

  dimension: totals_raw_total {
    type: number
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

view: orders_v2_test__items {
  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}
