view: orders_to_delete {
  sql_table_name: moltin.orders_to_delete ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
