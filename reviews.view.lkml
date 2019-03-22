view: reviews {
  sql_table_name: moltin.reviews ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: appkey {
    type: string
    sql: ${TABLE}.appkey ;;
  }

  dimension: cf_default_form__age {
    type: string
    sql: ${TABLE}.cf_Default_form__Age ;;
  }

  dimension: cf_default_form__assembly {
    type: number
    sql: ${TABLE}.cf_Default_form__Assembly ;;
  }

  dimension: cf_default_form__building_type {
    type: string
    sql: ${TABLE}.cf_Default_form__Building_Type ;;
  }

  dimension: cf_default_form__comfort {
    type: number
    sql: ${TABLE}.cf_Default_form__Comfort ;;
  }

  dimension: cf_default_form__quality {
    type: number
    sql: ${TABLE}.cf_Default_form__Quality ;;
  }

  dimension: comment_content {
    type: string
    sql: ${TABLE}.comment_content ;;
  }

  dimension_group: comment_created {
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
    sql: ${TABLE}.comment_created_at ;;
  }

  dimension: comment_public {
    type: number
    sql: ${TABLE}.comment_public ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}.display_name ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: product_description {
    type: string
    sql: ${TABLE}.product_description ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.product_id ;;
  }

  dimension: product_image_url {
    type: string
    sql: ${TABLE}.product_image_url ;;
  }

  dimension: product_title {
    type: string
    sql: ${TABLE}.product_title ;;
  }

  dimension: product_url {
    type: string
    sql: ${TABLE}.product_url ;;
  }

  dimension: published {
    type: yesno
    sql: ${TABLE}.published ;;
  }

  dimension: published_image_url {
    type: string
    sql: ${TABLE}.published_image_url ;;
  }

  dimension: review_content {
    type: string
    sql: ${TABLE}.review_content ;;
  }

  dimension: review_score {
    type: number
    sql: ${TABLE}.review_score ;;
  }

  dimension: review_title {
    type: string
    sql: ${TABLE}.review_title ;;
  }

  dimension: unpublished_image_url {
    type: string
    sql: ${TABLE}.unpublished_image_url ;;
  }

  dimension: user_type {
    type: string
    sql: ${TABLE}.user_type ;;
  }

  measure: count {
    type: count
    drill_fields: [id, display_name]
  }
}
