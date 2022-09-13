view: getlife_v_vis_finance_invoices {
  sql_table_name: `getlife_v_vis_finance.getlife_v_vis_finance_invoices`
    ;;

  dimension: amount_due {
    type: number
    sql: ${TABLE}.amount_due ;;
  }

  dimension: amount_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.amount_paid ;;
  }

  dimension: broker_comm {
    type: number
    sql: ${TABLE}.broker_comm ;;
  }

  dimension: broker_comm_pctg {
    type: number
    sql: ${TABLE}.broker_comm_pctg ;;
  }

  dimension: broker_id {
    type: number
    sql: ${TABLE}.broker_id ;;
  }

  dimension: broker_liquid_month {
    type: string
    sql: ${TABLE}.broker_liquid_month ;;
  }

  dimension: broker_name {
    type: string
    sql: ${TABLE}.broker_name ;;
  }

  dimension: carrier {
    type: string
    sql: ${TABLE}.carrier ;;
  }

  dimension: carrier_comm {
    type: number
    sql: ${TABLE}.carrier_comm ;;
  }

  dimension: carrier_comm_pctg {
    type: number
    sql: ${TABLE}.carrier_comm_pctg ;;
  }

  dimension: carrier_liquid_month {
    type: number
    sql: ${TABLE}.carrier_liquid_month ;;
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

  dimension_group: create_date {
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
    sql: ${TABLE}.create_date ;;
  }

  dimension_group: invoice_create {
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
    sql: ${TABLE}.invoice_create_date ;;
  }

  dimension: lead_email {
    type: string
    sql: ${TABLE}.lead_email ;;
  }

  dimension: lead_id {
    type: number
    sql: ${TABLE}.lead_id ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension_group: payment_succeeded {
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
    sql: ${TABLE}.payment_succeeded_date ;;
  }

  dimension: policy_number {
    type: string
    sql: ${TABLE}.policy_number ;;
  }

  dimension: stripe_charge_id {
    type: string
    sql: ${TABLE}.stripe_charge_id ;;
  }

  dimension: stripe_invoice_id {
    type: string
    sql: ${TABLE}.stripe_invoice_id ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [broker_name]
  }
}
