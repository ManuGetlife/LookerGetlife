view: getlife_v_vis_finance_pl_num_policies_sold {
  sql_table_name: `getlife_v_vis_finance.getlife_v_vis_finance_PL_num_policies_sold`
    ;;

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

  dimension: num_policies_sold {
    type: number
    sql: ${TABLE}.Num_policies_sold ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
