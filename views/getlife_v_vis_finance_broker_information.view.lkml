view: getlife_v_vis_finance_broker_information {
  sql_table_name: `getlife_v_vis_finance.getlife_v_vis_finance_broker_information`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: id_card {
    type: string
    sql: ${TABLE}.id_card ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension_group: register {
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
    sql: ${TABLE}.register_Date ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
