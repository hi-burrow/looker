view: chapter3_orders {
  sql_table_name: moltin.chapter3_orders ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
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
    sql: CAST(${TABLE}.created_at AS TIMESTAMP) ;;
  }

  dimension: customer_email {
    type: string
    sql: ${TABLE}.customer_email ;;
  }

  dimension: gateway_value {
    type: string
    sql: ${TABLE}.gateway_value ;;
  }

  dimension: ship_to_first_name {
    type: string
    sql: ${TABLE}.ship_to_first_name ;;
  }

  dimension: ship_to_last_name {
    type: string
    sql: ${TABLE}.ship_to_last_name ;;
  }

  dimension: status_value {
    type: string
    sql: ${TABLE}.status_value ;;
  }

  measure: count {
    type: count
    drill_fields: [id, ship_to_first_name, ship_to_last_name]
  }
}
