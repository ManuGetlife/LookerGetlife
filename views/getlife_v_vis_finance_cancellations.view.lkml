view: getlife_v_vis_finance_cancellations {
  sql_table_name: `getlife_v_vis_finance.getlife_v_vis_finance_cancellations`
    ;;

  dimension_group: cancellation {
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
    sql: ${TABLE}.cancellation_date ;;
  }

  dimension: cancellation_reason {
    type: string
    sql: ${TABLE}.cancellation_reason ;;
  }

  dimension: cancellation_type {
    type: string
    sql: ${TABLE}.cancellation_type ;;
  }

  dimension: clawback_broker {
    type: number
    sql: ${TABLE}.clawback_broker ;;
  }

  dimension: clawback_broker_base {
    type: number
    sql: ${TABLE}.clawback_broker_base ;;
  }

  dimension: clawback_broker_pctg {
    type: number
    sql: ${TABLE}.clawback_broker_pctg ;;
  }

  dimension: clawback_carrier {
    type: number
    sql: ${TABLE}.clawback_carrier ;;
  }

  dimension: clawback_carrier_base {
    type: number
    sql: ${TABLE}.clawback_carrier_base ;;
  }

  dimension: clawback_carrier_pctg {
    type: number
    sql: ${TABLE}.clawback_carrier_pctg ;;
  }

  dimension: customer_email {
    type: string
    sql: ${TABLE}.customer_email ;;
  }

  dimension_group: effect {
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
    datatype: datetime
    sql: ${TABLE}.effect_date ;;
  }

  dimension: lead_id {
    type: number
    sql: ${TABLE}.lead_id ;;
  }

  dimension: lifetime {
    type: number
    sql: ${TABLE}.lifetime ;;
  }

  dimension: new_lead_id {
    type: number
    sql: ${TABLE}.new_lead_id ;;
  }

  dimension: new_lead_status {
    type: string
    sql: ${TABLE}.new_lead_status ;;
  }

  dimension_group: purchase {
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
    datatype: datetime
    sql: ${TABLE}.purchase_date ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
