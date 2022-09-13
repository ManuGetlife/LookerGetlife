view: getlife_v_vis_finance_pl_input_paid_premium {
  sql_table_name: `getlife_v_vis_finance.getlife_v_vis_finance_PL_input_paid_premium`
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

  dimension: frequency {
    type: string
    sql: ${TABLE}.Frequency ;;
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
