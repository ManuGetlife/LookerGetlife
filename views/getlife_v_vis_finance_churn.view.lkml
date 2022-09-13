view: getlife_v_vis_finance_churn {
  sql_table_name: `getlife_v_vis_finance.getlife_v_vis_finance_churn`
    ;;

  dimension: actice_policies {
    type: number
    sql: ${TABLE}.actice_policies ;;
  }

  dimension_group: fecha {
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
    sql: ${TABLE}.fecha ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }

  dimension: ongoing_churn_raw {
    type: number
    sql: ${TABLE}.ongoing_churn ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}.sales ;;
  }

  dimension: withdrawal_churn_raw {
    type: number
    sql: ${TABLE}.withdrawal_churn ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: ongoing_churn {
    type: number
    sql: sum(safe_divide(ongoing_churn,actice_policies)) ;;
  }

  measure: withdrawal_churn {
    type: number
    sql: sum(safe_divide(withdrawal_churn,sales)) ;;
  }


}
