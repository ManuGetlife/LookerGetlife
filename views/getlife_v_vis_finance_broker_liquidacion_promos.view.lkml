view: getlife_v_vis_finance_broker_liquidacion_promos {
  sql_table_name: `getlife_v_vis_finance.getlife_v_vis_finance_broker_liquidacion_promos`
    ;;

  dimension: abr22 {
    type: number
    sql: ${TABLE}.ABR22 ;;
  }

  dimension: ago22 {
    type: number
    sql: ${TABLE}.AGO22 ;;
  }

  dimension: broker_id {
    type: number
    sql: ${TABLE}.broker_id ;;
  }

  dimension: broker_name {
    type: string
    sql: ${TABLE}.broker_name ;;
  }

  dimension: dec21 {
    type: number
    sql: ${TABLE}.DEC21 ;;
  }

  dimension: dec22 {
    type: number
    sql: ${TABLE}.DEC22 ;;
  }

  dimension: email_admin {
    type: string
    sql: ${TABLE}.email_admin ;;
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
    sql: ${TABLE}.iban ;;
  }

  dimension: jul22 {
    type: number
    sql: ${TABLE}.JUL22 ;;
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

  dimension: nov21 {
    type: number
    sql: ${TABLE}.NOV21 ;;
  }

  dimension: nov22 {
    type: number
    sql: ${TABLE}.NOV22 ;;
  }

  dimension: oct22 {
    type: number
    sql: ${TABLE}.OCT22 ;;
  }

  dimension: promo_sales {
    type: number
    sql: ${TABLE}.promo_sales ;;
  }

  dimension: sept22 {
    type: number
    sql: ${TABLE}.SEPT22 ;;
  }

  measure: count {
    type: count
    drill_fields: [broker_name]
  }
}
