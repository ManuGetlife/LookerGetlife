view: getlife_v_vis_broker_info_cons {
  sql_table_name: `getlife_v_vis_finance.getlife_v_vis_broker_info_cons`
    ;;

  dimension: broker_id {
    type: number
    sql: ${TABLE}.broker_id ;;
  }

  dimension: email_admin {
    type: string
    sql: ${TABLE}.email_admin ;;
  }

  dimension: email_contact {
    type: string
    sql: ${TABLE}.email_contact ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension_group: terms_accepted {
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
    sql: ${TABLE}.terms_accepted ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
