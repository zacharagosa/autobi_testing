include: "/view/*/*/*.view.lkml"
include: "/view/custom_view/extension/ext_sentiment_report_call_level_detail.view.lkml"
include: "/view/custom_view/refinement/sentiment_report_call_level_detail_convo_iq_refined.view"



explore: sentiment_report_call_level_detail_convo_iq {
  view_label: "Call Sentiment Details" ## added by Lyndsey removed the FROM paramter
  label: "ConvoIQ Sentiment Report" ## added by Lyndsey
  join: icm_summary_fact {
    view_label: "ICM Summary Fact"
    type: inner
    relationship: one_to_one
    sql_on: ${sentiment_report_call_level_detail_convo_iq.ivr_call_id} = ${icm_summary_fact.ivr_call_id};;
   # fields: [] ##use this to hide all fields

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
    type: inner
    relationship: one_to_many
    sql_on: ${sentiment_report_call_level_detail_convo_iq.ivr_call_id}=${transferred_call.ivr_call_id} ;;
  }

}

#changes
