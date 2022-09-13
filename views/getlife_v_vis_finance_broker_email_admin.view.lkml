view: getlife_v_vis_finance_broker_email_admin {
  sql_table_name: `getlife_v_vis_finance.getlife_v_vis_finance_broker_email_admin`
    ;;

  dimension: broker_id {
    type: number
    sql: ${TABLE}.broker_id ;;
  }

  dimension: broker_name {
    type: string
    sql: ${TABLE}.broker_name ;;
  }

  dimension: email_admin {
    type: string
    sql: ${TABLE}.email_admin ;;
  }

  measure: count {
    type: count
    drill_fields: [broker_name]
  }
}
