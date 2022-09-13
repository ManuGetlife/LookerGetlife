view: getlife_v_vis_finance_broker_comms {
  sql_table_name: `getlife_v_vis_finance.getlife_v_vis_finance_broker_comms`
    ;;

  dimension: abr22 {
    type: number
    sql: ${TABLE}.ABR22 ;;
  }

  dimension: active_policies {
    type: number
    sql: ${TABLE}.Active_Policies ;;
  }

  dimension: ago21 {
    type: number
    sql: ${TABLE}.AGO21 ;;
  }

  dimension: ago22 {
    type: number
    sql: ${TABLE}.AGO22 ;;
  }

  dimension: broker_id {
    type: number
    sql: ${TABLE}.Broker_id ;;
  }

  dimension: dec21 {
    type: number
    sql: ${TABLE}.DEC21 ;;
  }

  dimension: dec22 {
    type: number
    sql: ${TABLE}.DEC22 ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: ene22 {
    type: number
    sql: ${TABLE}.ENE22 ;;
  }

  dimension: feb22 {
    type: number
    sql: ${TABLE}.FEB22 ;;
  }

  dimension: iban {
    type: string
    sql: ${TABLE}.IBAN ;;
  }

  dimension: jul21 {
    type: number
    sql: ${TABLE}.jul21 ;;
  }

  dimension: jul22 {
    type: number
    sql: ${TABLE}.jul22 ;;
  }

  dimension: jun22 {
    type: number
    sql: ${TABLE}.JUN22 ;;
  }

  dimension: mar22 {
    type: number
    sql: ${TABLE}.MAR22 ;;
  }

  dimension: may22 {
    type: number
    sql: ${TABLE}.MAY22 ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: nov21 {
    type: number
    sql: ${TABLE}.NOV21 ;;
  }

  dimension: nov22 {
    type: number
    sql: ${TABLE}.NOV22 ;;
  }

  dimension: oct21 {
    type: number
    sql: ${TABLE}.OCT21 ;;
  }

  dimension: oct22 {
    type: number
    sql: ${TABLE}.OCT22 ;;
  }

  dimension: sept21 {
    type: number
    sql: ${TABLE}.SEPT21 ;;
  }

  dimension: sept22 {
    type: number
    sql: ${TABLE}.SEPT22 ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
