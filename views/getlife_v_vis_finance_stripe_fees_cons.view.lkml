view: getlife_v_vis_finance_stripe_fees_cons {
  sql_table_name: `getlife_v_vis_finance.getlife_v_vis_finance_stripe_fees_cons`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension_group: available {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.available_on ;;
  }

  dimension: balance_transaction_id {
    type: string
    sql: ${TABLE}.balance_transaction_id ;;
  }

  dimension: broker {
    type: number
    sql: ${TABLE}.broker ;;
  }

  dimension: carrier {
    type: string
    sql: ${TABLE}.carrier ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.created ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: fee {
    type: number
    sql: ${TABLE}.fee ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: net {
    type: number
    sql: ${TABLE}.net ;;
  }

  dimension: payment_method {
    type: string
    sql: ${TABLE}.payment_method ;;
  }

  dimension: payment_status {
    type: string
    sql: ${TABLE}.payment_Status ;;
  }

  dimension: prima_total {
    type: number
    sql: ${TABLE}.prima_total ;;
  }

  dimension: reporting_category {
    type: string
    sql: ${TABLE}.reporting_category ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: stripe_id {
    type: string
    sql: ${TABLE}.Stripe_id ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
