connection: "getlife-bigquery"

# include all the views
include: "/views/**/*.view"

datagroup: finance_v2_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: finance_v2_default_datagroup

explore: getlife_v_vis_finance_pl_input_comms_monthly_policies_cons {}

explore: getlife_v_vis_broker_info_cons {}

explore: getlife_v_vis_finance_pl_input_comms_annual_policies_cons {}

explore: getlife_v_vis_finance_pl_input_comms_monthly_policies_v2_cons {}

explore: getlife_v_vis_finance_pl_input_comms_annual_policies_v2 {}

explore: getlife_v_vis_finance_pl_input_mkt {}

explore: getlife_v_vis_finance_pl_input_comms_monthly_policies_v2 {}

explore: getlife_v_vis_finance_pl_input_paid_premium {}

explore: getlife_v_vis_finance_pl_num_policies_sold {}

explore: getlife_v_vis_finance_pl_input_comms_annual_policies {}

explore: getlife_v_vis_finance_pl_input_mkt_cons {}

explore: getlife_v_vis_finance_pl_input_comms_monthly_policies {}

explore: getlife_v_vis_finance_broker_email_admin {}

explore: getlife_v_vis_finance_broker_info {}

explore: getlife_v_vis_finance_broker_liquidacion {}

explore: getlife_v_vis_finance_broker_comms_cons {}

explore: getlife_v_vis_finance_broker_information {}

explore: getlife_v_vis_finance_broker_liquidacion_promos {}

explore: getlife_v_vis_finance_cancellations {}

explore: getlife_v_vis_finance_churn {}

explore: getlife_v_vis_finance_contract_broker_input {}

explore: getlife_v_vis_finance_charges_clients {}

explore: getlife_v_vis_finance_broker_comms {}

explore: getlife_v_vis_finance_stripe_fees {}

explore: getlife_v_vis_finance_stripe_balance_transaction {}

explore: getlife_v_vis_finance_contract_input {}

explore: getlife_v_vis_finance_invoices {}

explore: getlife_v_vis_finance_contract_info {}

explore: getlife_v_vis_finance_stripe_balance_transaction_cons {}

explore: getlife_v_vis_finance_stripe_fees_cons {}
