include: "/view/*/*/*.view.lkml"
include: "/view/custom_view/extension/ext_sentiment_report_call_level_detail.view.lkml"
include: "/view/custom_view/refinement/sentiment_report_call_level_detail_convo_iq_refined.view"



explore: sentiment_churn{
  from: sentiment_report_call_level_detail_convo_iq {
  view_label: "Sentiment-Churn Analysis" ## added by Lyndsey removed the FROM paramter
  label: "ConvoIQ Sentiment-Churn Report" ## added by Lyndsey
  }
  join: icm_summary_fact {
    view_label: "ICM Summary Fact"
    type: inner
    relationship: one_to_one
    sql_on: ${sentiment_churn.ivr_call_id} = ${icm_summary_fact.ivr_call_id};;
    # fields: [] ##use this to hide all fields

  }
  join: ivr_call {
    view_label: "IVR Call"
    type: inner
    relationship: one_to_one
    sql_on: ${sentiment_churn.ivr_call_id} =
      ${ivr_call.ivr_call_id};;
    #   fields: [] ##use this to hide all fields

  }
  join: transferred_call {
    view_label: "Transferred Call"
    type: inner
    relationship: one_to_many
    sql_on: ${sentiment_churn.ivr_call_id}=${transferred_call.ivr_call_id} ;;
  }

  join: churn_sum_fact {
    view_label: "Customer Churn"
    type: left_outer
    relationship: many_to_one
    sql_on: ${sentiment_churn.cust_id}=${churn_sum_fact.cust_id} and (${sentiment_churn.event_dt_month}) =(${churn_sum_fact.trans_dt_month});;
}

}
#changes
