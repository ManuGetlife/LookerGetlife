view: getlife_v_vis_finance_contract_broker_input {
  sql_table_name: `getlife_v_vis_finance.getlife_v_vis_finance_contract_broker_input`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: annualized_upfront {
    type: number
    sql: ${TABLE}.Annualized_Upfront ;;
  }

  dimension: broker {
    type: number
    sql: ${TABLE}.Broker ;;
  }

  dimension: broker_employee {
    type: number
    sql: ${TABLE}.Broker_employee ;;
  }

  dimension: capital {
    type: number
    sql: ${TABLE}.capital ;;
  }

  dimension: carrier {
    type: string
    sql: ${TABLE}.carrier ;;
  }

  dimension: coverage {
    type: string
    sql: ${TABLE}.coverage ;;
  }

  dimension_group: effect {
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
    sql: ${TABLE}.effect_date ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: frequency {
    type: number
    sql: ${TABLE}.Frequency ;;
  }

  dimension: policy_number {
    type: string
    sql: ${TABLE}.policy_number ;;
  }

  dimension: prima_total {
    type: number
    sql: ${TABLE}.prima_total ;;
  }

  dimension_group: purchase {
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
    sql: ${TABLE}.purchase_date ;;
  }

  dimension_group: sign {
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
    sql: ${TABLE}.sign_date ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
