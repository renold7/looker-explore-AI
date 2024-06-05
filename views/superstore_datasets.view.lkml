view: superstore_datasets {
  sql_table_name: `dla_data_governance.superstore_datasets` ;;

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }
  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension: customer_name {
    type: string
    sql: ${TABLE}.customer_name ;;
  }
  dimension: gmv {
    type: number
    sql: ${TABLE}.gmv ;;
  }
  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }
  dimension: lon {
    type: number
    sql: ${TABLE}.lon ;;
  }
  dimension_group: order {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.order_date ;;
  }
  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
  }
  dimension: profit {
    type: number
    sql: ${TABLE}.profit ;;
  }
  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }
  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }
  dimension: segment {
    type: string
    sql: ${TABLE}.segment ;;
  }
  dimension_group: ship {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ship_date ;;
  }
  dimension: ship_mode {
    type: string
    sql: ${TABLE}.ship_mode ;;
  }
  dimension: sub_category {
    type: string
    sql: ${TABLE}.sub_category ;;
  }
  dimension: total_cost {
    type: number
    sql: ${TABLE}.total_cost ;;
  }
  dimension: total_gmv {
    type: number
    sql: ${TABLE}.total_gmv ;;
  }
  dimension: total_profit {
    type: number
    sql: ${TABLE}.total_profit ;;
  }
  measure: count {
    type: count
    drill_fields: [customer_name]
  }
}
