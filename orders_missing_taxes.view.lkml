view: orders_missing_taxes {
  sql_table_name: moltin.orders_missing_taxes ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: totals_raw_tax {
    type: number
    sql: ${TABLE}.totals_raw_tax ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
