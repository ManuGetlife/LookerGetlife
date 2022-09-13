view: getlife_v_vis_finance_contract_info {
  sql_table_name: `getlife_v_vis_finance.getlife_v_vis_finance_contract_info`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.Age ;;
  }

  dimension: annualized_upfront {
    type: number
    sql: ${TABLE}.Annualized_Upfront ;;
  }

  dimension: awareness_campaign {
    type: string
    sql: ${TABLE}.awareness_campaign ;;
  }

  dimension: awareness_channel {
    type: string
    sql: ${TABLE}.awareness_channel ;;
  }

  dimension: awareness_source {
    type: string
    sql: ${TABLE}.awareness_source ;;
  }

  dimension_group: birthdate {
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
    sql: ${TABLE}.birthdate ;;
  }

  dimension: broker {
    type: number
    sql: ${TABLE}.Broker ;;
  }

  dimension: broker_employee {
    type: number
    sql: ${TABLE}.Broker_employee ;;
  }

  dimension: broker_employee_email {
    type: string
    sql: ${TABLE}.broker_employee_email ;;
  }

  dimension: broker_employee_phone {
    type: number
    sql: ${TABLE}.Broker_employee_phone ;;
  }

  dimension: broker_name {
    type: string
    sql: ${TABLE}.Broker_name ;;
  }

  dimension: cancell_type {
    type: string
    sql: ${TABLE}.cancell_type ;;
  }

  dimension_group: cancellation {
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
    sql: ${TABLE}.cancellation_date ;;
  }

  dimension: cancellation_reason {
    type: string
    sql: ${TABLE}.cancellation_reason ;;
  }

  dimension: capital {
    type: number
    sql: ${TABLE}.Capital ;;
  }

  dimension: carrier {
    type: string
    sql: ${TABLE}.Carrier ;;
  }

  dimension: carrier_status {
    type: string
    sql: ${TABLE}.Carrier_status ;;
  }

  dimension: ccs {
    type: number
    sql: ${TABLE}.ccs ;;
  }

  dimension: clawback_1_broker {
    type: number
    sql: ${TABLE}.Clawback_1_broker ;;
  }

  dimension: clawback_1_carrier {
    type: string
    sql: ${TABLE}.Clawback_1_carrier ;;
  }

  dimension: clawback_2_broker {
    type: number
    sql: ${TABLE}.Clawback_2_broker ;;
  }

  dimension: clawback_2_carrier {
    type: number
    sql: ${TABLE}.Clawback_2_carrier ;;
  }

  dimension: clawback_3_carrier {
    type: number
    sql: ${TABLE}.Clawback_3_carrier ;;
  }

  dimension: conversion_time {
    type: number
    sql: ${TABLE}.Conversion_time ;;
  }

  dimension: corregido {
    type: number
    sql: ${TABLE}.corregido ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: coverage {
    type: string
    sql: ${TABLE}.Coverage ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
  }

  dimension_group: definitive {
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
    sql: ${TABLE}.Definitive_date ;;
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
    sql: ${TABLE}.Effect_date ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: frequency {
    type: number
    sql: ${TABLE}.Frequency ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: goal_source {
    type: string
    sql: ${TABLE}.goal_source ;;
  }

  dimension: id_number {
    type: string
    sql: ${TABLE}.id_number ;;
  }

  dimension: intention {
    type: string
    sql: ${TABLE}.intention ;;
  }

  dimension: ips {
    type: number
    sql: ${TABLE}.ips ;;
  }

  dimension: is_valid_broker {
    type: string
    sql: ${TABLE}.is_valid_broker ;;
  }

  dimension: lea {
    type: number
    sql: ${TABLE}.lea ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: ongoing_broker {
    type: number
    sql: ${TABLE}.Ongoing_broker ;;
  }

  dimension: ongoing_carrier {
    type: number
    sql: ${TABLE}.Ongoing_carrier ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: policy_number {
    type: string
    sql: ${TABLE}.Policy_number ;;
  }

  dimension: prima_neta {
    type: number
    sql: ${TABLE}.prima_neta ;;
  }

  dimension: prima_neta_f {
    type: number
    sql: ${TABLE}.prima_neta_f ;;
  }

  dimension: prima_neta_fracc {
    type: number
    sql: ${TABLE}.prima_neta_fracc ;;
  }

  dimension: prima_neta_fracc_rec1 {
    type: number
    sql: ${TABLE}.prima_neta_fracc_rec1 ;;
  }

  dimension: prima_neta_ipa {
    type: number
    sql: ${TABLE}.prima_neta_ipa ;;
  }

  dimension: prima_neta_it {
    type: number
    sql: ${TABLE}.prima_neta_IT ;;
  }

  dimension: prima_real {
    type: number
    sql: ${TABLE}.prima_real ;;
  }

  dimension: prima_total {
    type: number
    sql: ${TABLE}.prima_total ;;
  }

  dimension: prima_total_fracc {
    type: number
    sql: ${TABLE}.prima_total_fracc ;;
  }

  dimension: prima_total_fracc_rec1 {
    type: number
    sql: ${TABLE}.prima_total_fracc_rec1 ;;
  }

  dimension: prima_total_it {
    type: number
    sql: ${TABLE}.prima_total_IT ;;
  }

  dimension: promotion {
    type: string
    sql: ${TABLE}.promotion ;;
  }

  dimension: promotion_cost {
    type: number
    sql: ${TABLE}.promotion_cost ;;
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
    sql: ${TABLE}.Purchase_date ;;
  }

  dimension_group: renewal {
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
    sql: ${TABLE}.Renewal_date ;;
  }

  dimension: sales_source {
    type: string
    sql: ${TABLE}.sales_source ;;
  }

  dimension_group: sign {
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
    sql: ${TABLE}.Sign_date ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: stripe_id {
    type: string
    sql: ${TABLE}.Stripe_id ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: upfront_broker {
    type: number
    sql: ${TABLE}.Upfront_broker ;;
  }

  dimension: upfront_carrier {
    type: number
    sql: ${TABLE}.Upfront_carrier ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}.zipcode ;;
  }

  dimension: channel {
    type:  string
    sql: case
          when ${sales_source} = "Direct Online" then "D2C Online"
          when ${sales_source} = "Direct Agent" then "D2C Advisor"
          else ${sales_source} end
          ;;
  }


  dimension: cancell_month {
    type:  number
    sql:ceil(date_diff(cancellation_date, purchase_date, day) / 30)  ;;
  }

  measure: count_cancell_month {
    type:  count
    drill_fields:  [cancell_month]
  }


  measure: count {
    type: count
    drill_fields: [id, name, broker_name]
  }
}
