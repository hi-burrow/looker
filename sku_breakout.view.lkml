view: sku_breakout {
  sql_table_name: moltin.sku_breakout ;;

  dimension: breakout {
    type: string
    sql: ${TABLE}.Breakout ;;
  }

  dimension: master {
    type: string
    sql: ${TABLE}.Master ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
