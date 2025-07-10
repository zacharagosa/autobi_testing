include: "/view/*/*/*.view.lkml"
include: "/view/custom_view/extension/ext_sentiment_report_call_level_detail.view.lkml"




explore: call_center_metrics{
  from:
  sentiment_report_call_level_detail_convo_iq {
  view_label: "Sentiment Analysis " ## added by Lyndsey removed the FROM paramter
  label: "Call Center Operations" ## added by Lyndsey
  }
  join: icm_summary_fact {
    view_label: "ICM Summary Fact"
    type: inner
    relationship: one_to_one
    sql_on: ${call_center_metrics.ivr_call_id} = ${icm_summary_fact.ivr_call_id};;
    # fields: [] ##use this to hide all fields

  }
  join: ivr_call {
    view_label: "IVR Call"
    type: inner
    relationship: one_to_one
    sql_on: ${call_center_metrics.ivr_call_id} =
      ${ivr_call.ivr_call_id};;
    #   fields: [] ##use this to hide all fields

  }
  join: transferred_call {
    view_label: "Transferred Call"
    type: inner
    relationship: one_to_many
    sql_on: ${call_center_metrics.ivr_call_id}=${transferred_call.ivr_call_id} ;;
  }

  join: churn_sum_fact {
    view_label: "Churn Details"
    type: inner
    relationship: one_to_many
    sql_on: ${call_center_metrics.cust_id}=${churn_sum_fact.cust_id};;
  }
  join: vzw_cust_acct_line_prfl {
    view_label: "Customer Account Line Profile"
    type: inner
    relationship: one_to_many
    sql_on: ${call_center_metrics.cust_id}=${vzw_cust_acct_line_prfl.cust_id} ;;
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
    ]
  }
}

#changes
