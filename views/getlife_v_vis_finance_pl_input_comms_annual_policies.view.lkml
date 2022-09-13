view: getlife_v_vis_finance_pl_input_comms_annual_policies {
  sql_table_name: `getlife_v_vis_finance.getlife_v_vis_finance_PL_input_comms_annual_policies`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: awareness_source {
    type: string
    sql: ${TABLE}.Awareness_source ;;
  }

  dimension: broker {
    type: number
    sql: ${TABLE}.Broker ;;
  }

  dimension: broker_commission {
    type: number
    sql: ${TABLE}.Broker_commission ;;
  }

  dimension_group: broker_due {
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
    sql: ${TABLE}.Broker_due_date ;;
  }

  dimension_group: charge {
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
    sql: ${TABLE}.Charge_date ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.customer_id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension_group: invoice {
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
    sql: ${TABLE}.Invoice_date ;;
  }

  dimension: net_amount {
    type: number
    sql: ${TABLE}.Net_amount ;;
  }

  dimension: policy_number {
    type: string
    sql: ${TABLE}.policy_number ;;
  }

  dimension: prima_total {
    type: number
    sql: ${TABLE}.prima_total ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
