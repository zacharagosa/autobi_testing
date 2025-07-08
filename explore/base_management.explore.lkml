include: "/view/*/*/*.view.lkml" ## include only necessary views

explore: churn_sum_fact {
  view_label: "Base Management - Churn details"
  label: "Base Management Report"
  fields: [ALL_FIELDS*,
      -subs_sum_fact.acct_num,
      -subs_sum_fact.birth_year,
      -subs_sum_fact.curr_contract_term,
      -subs_sum_fact.cust_id,
      -subs_sum_fact.cust_line_seq_id,
      -subs_sum_fact.cust_type_cd,
      -subs_sum_fact.data_tier,
      -subs_sum_fact.device_brand_nm,
      -subs_sum_fact.device_grouping,
      -subs_sum_fact.in_contract_term,
      -subs_sum_fact.mkt_cd,
      -subs_sum_fact.prepaid_ind,
      -subs_sum_fact.prod_nm,
      -subs_sum_fact.promo_type,
      -subs_sum_fact.region_desc,
      -subs_sum_fact.tenure,
      -dla_sum_fact.acct_num,
      -dla_sum_fact.birth_year,
      -dla_sum_fact.curr_contract_term,
      -dla_sum_fact.cust_id,
      -dla_sum_fact.cust_line_seq_id,
      -dla_sum_fact.cust_type_cd,
      -dla_sum_fact.data_tier,
      -dla_sum_fact.device_brand_nm,
      -dla_sum_fact.device_grouping,
      -dla_sum_fact.in_contract_term,
      -dla_sum_fact.mkt_cd,
      -dla_sum_fact.prepaid_ind,
      -dla_sum_fact.prod_nm,
      -dla_sum_fact.promo_type,
      -dla_sum_fact.region_desc,
      -dla_sum_fact.tenure,
      -dla_sum_fact.hdp_insert_dt_date,
      -dla_sum_fact.hdp_insert_dt_month,
      -dla_sum_fact.hdp_insert_dt_week,
      -dla_sum_fact.hdp_insert_dt_year,
      -dla_sum_fact.hdp_insert_dt_time,
      -dla_sum_fact.hdp_insert_dt_quarter,
      -dla_sum_fact.hdp_insert_dt_raw
      ] # removing duplicate fields from other tables
  join: subs_sum_fact {
    view_label: "Base Management - Subscriber details"
    type: left_outer
    relationship: one_to_one
    sql_on: ${churn_sum_fact.cust_id}=${subs_sum_fact.cust_id} and ${churn_sum_fact.cust_line_seq_id}=${subs_sum_fact.cust_line_seq_id} and ${churn_sum_fact.mth_date}=${subs_sum_fact.rpt_mth_date} ;;


  }

  join: dla_sum_fact {
    view_label: "Base Management - Daily activity"
    type: left_outer
    relationship:one_to_many
    sql_on: ${churn_sum_fact.cust_id}=${dla_sum_fact.cust_id} and
      ${churn_sum_fact.cust_line_seq_id}=${dla_sum_fact.cust_line_seq_id} and ${churn_sum_fact.mth_date}=${dla_sum_fact.rpt_mth_date};;

  }

  join: icm_summary_fact {
    type: left_outer
    relationship: one_to_many
    sql_on:${icm_summary_fact.cust_id} = ${churn_sum_fact.cust_id} and ${churn_sum_fact.cust_line_seq_id} = ${icm_summary_fact.cust_line_seq_id};;

  }



  join: convoiq_loyalty_insights_offer_level_table {
    type: left_outer
    relationship: one_to_many
    sql_on: ${convoiq_loyalty_insights_offer_level_table.acss_call_id} = ${icm_summary_fact.acss_call_id};;
  }

  join: vzw_cust_acct_line_prfl {
    view_label: "Customer Account Line Profile"
    type: left_outer
    relationship: one_to_one
    sql_on: ${churn_sum_fact.cust_id}=${vzw_cust_acct_line_prfl.cust_id} and ${churn_sum_fact.cust_line_seq_id}=${vzw_cust_acct_line_prfl.cust_line_seq_id};;
    fields: [
      cust_id
      ,cust_line_seq_id
      ,mtn
      ,qesappscore
      ,qescallcenterscore
      ,qeschatbotscore
      ,qeschatscore
      ,qesfinalscore
      ,qesivrscore
      ,qesnetworkscore
      ,qesretailscore
      ,qesservicescore
      ,qeswebscore
      ,nqes_avg_score
      ,fwa_nqes_avg_score
      ,fwa_jrny_score
      ,fwa_ind
      ,nqes_category
    ]
  }

  join: sentiment_report_call_level_detail_convo_iq {
    view_label: "Sentiment analysis"
    type: left_outer
    relationship: one_to_many
    sql_on: ${sentiment_report_call_level_detail_convo_iq.ivr_call_id} = ${icm_summary_fact.ivr_call_id};;
  }

  join: ivr_call {
    view_label: "IVR Call"
    type: inner
    relationship: one_to_one
    sql_on: ${sentiment_report_call_level_detail_convo_iq.ivr_call_id} =
      ${ivr_call.ivr_call_id};;
    #   fields: [] ##use this to hide all fields

  }
  join: transferred_call {
    view_label: "Transferred Call"
    type: left_outer
    relationship: one_to_many
    sql_on: ${sentiment_report_call_level_detail_convo_iq.ivr_call_id}=${transferred_call.ivr_call_id} ;;
  }

}
