view: getlife_v_vis_finance_charges_clients {
  sql_table_name: `getlife_v_vis_finance.getlife_v_vis_finance_charges_clients`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: broker {
    type: number
    sql: ${TABLE}.Broker ;;
  }

  dimension_group: create {
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

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: net_amount {
    type: number
    sql: ${TABLE}.net_amount ;;
  }

  dimension: ongoing_broker {
    type: number
    sql: ${TABLE}.Ongoing_broker ;;
  }

  dimension: upfront_broker {
    type: number
    sql: ${TABLE}.Upfront_broker ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
