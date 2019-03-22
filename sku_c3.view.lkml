view: sku_c3 {
  sql_table_name: moltin.sku_c3 ;;

  dimension: c3_sku {
    type: string
    sql: ${TABLE}.c3_sku ;;
  }

  dimension: moltin_sku {
    type: string
    sql: ${TABLE}.moltin_sku ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
