view: shipment_status {
  sql_table_name: moltin.shipment_status ;;

  dimension_group: actual_ship {
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
    sql: ${TABLE}.actual_ship_date ;;
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

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: is_delayed {
    type: yesno
    sql: ${TABLE}.is_delayed ;;
  }

  dimension: master_tracking {
    type: string
    sql: ${TABLE}.master_tracking ;;
  }

  dimension_group: order {
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
    sql: ${TABLE}.order_date ;;
  }

  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }

  dimension_group: promised_ship {
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
    sql: ${TABLE}.promised_ship_date ;;
  }

  dimension_group: scheduled_delivery {
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
    sql: ${TABLE}.scheduled_delivery_date ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: [orders.bill_to_last_name, orders.id, orders.bill_to_first_name, orders.ship_to_first_name, orders.ship_to_last_name]
  }
}
