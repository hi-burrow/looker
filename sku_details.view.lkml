view: sku_details {
  sql_table_name: moltin.sku_details ;;

  dimension: arms_description {
    type: string
    sql: ${TABLE}.arms_description ;;
  }

  dimension: arms_value {
    type: string
    sql: ${TABLE}.arms_value ;;
  }

  dimension: color_description {
    type: string
    sql: ${TABLE}.color_description ;;
  }

  dimension: color_value {
    type: string
    sql: ${TABLE}.color_value ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: legs_description {
    type: string
    sql: ${TABLE}.legs_description ;;
  }

  dimension: legs_value {
    type: string
    sql: ${TABLE}.legs_value ;;
  }

  dimension: size_description {
    type: string
    sql: ${TABLE}.size_description ;;
  }

  dimension: size_value {
    type: string
    sql: ${TABLE}.size_value ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.SKU ;;
  }

  dimension: type_description {
    type: string
    sql: ${TABLE}.type_description ;;
  }

  dimension: type_value {
    type: string
    sql: ${TABLE}.type_value ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
