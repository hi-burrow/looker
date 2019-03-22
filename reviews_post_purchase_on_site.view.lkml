view: reviews_post_purchase_on_site {
  sql_table_name: moltin.reviews_post_purchase_on_site ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: question {
    type: string
    sql: ${TABLE}.question ;;
  }

  dimension: response {
    type: string
    sql: ${TABLE}.response ;;
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
    sql: CAST(${TABLE}.updated_at AS TIMESTAMP) ;;
  }

  dimension: user_email {
    type: string
    sql: ${TABLE}.user_email ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.user_name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, user_name]
  }
}
