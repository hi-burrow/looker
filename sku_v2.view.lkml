view: sku_v2 {
  view_label: "SKU"
  sql_table_name: moltin.sku_v2 ;;

  dimension: arms_description {
    label: "Arms"
    type: string
    sql: ${TABLE}.arms_description ;;
  }

  dimension: arms_value {
    type: string
    sql: ${TABLE}.arms_value ;;
    hidden: yes
  }

  dimension: color_description {
    label: "Color"
    type: string
    sql: ${TABLE}.color_description ;;
  }

  dimension: color_value {
    type: string
    sql: ${TABLE}.color_value ;;
    hidden: yes
  }

  dimension: legs_description {
    label: "Legs"
    type: string
    sql: ${TABLE}.legs_description ;;
  }

  dimension: legs_value {
    type: string
    sql: ${TABLE}.legs_value ;;
    hidden: yes
  }

  dimension: size_description {
    label: "Size"
    type: string
    sql: ${TABLE}.size_description ;;
  }

  dimension: size_value {
    type: number
    sql: ${TABLE}.size_value ;;
    hidden: yes
  }

  dimension: sku {
    label: "SKU"
    type: string
    sql: ${TABLE}.SKU ;;
    primary_key: yes
  }

  dimension: type_description {
    label: "Type"
    type: string
    sql: ${TABLE}.type_description ;;
  }

  dimension: type_value {
    type: string
    sql: ${TABLE}.type_value ;;
    hidden: yes
  }


}
