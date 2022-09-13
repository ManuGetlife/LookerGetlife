view: getlife_v_vis_finance_pl_input_comms_monthly_policies_v2_cons {
  sql_table_name: `getlife_v_vis_finance.getlife_v_vis_finance_PL_input_comms_monthly_policies_v2_cons`
    ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.Amount ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.Date ;;
  }

  dimension: dept {
    type: string
    sql: ${TABLE}.Dept ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.Source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
