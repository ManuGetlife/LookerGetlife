view: getlife_v_vis_finance_pl_input_mkt_cons {
  sql_table_name: `getlife_v_vis_finance.getlife_v_vis_finance_PL_input_mkt_cons`
    ;;

  dimension: cost {
    type: number
    sql: ${TABLE}.Cost ;;
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
