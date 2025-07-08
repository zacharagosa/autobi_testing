include: "/view/*/*/*.view.lkml" ## include only necessary views



explore: convoiq_loyalty_insights_call_level_table{
    view_label: "Loyalty Insights Details"
    label: "Loyalty Insights Report"
    fields: [ALL_FIELDS*,
      -convoiq_loyalty_insights_call_level_table.learn_strategies_used,
      -convoiq_loyalty_insights_call_level_table.provide_strategies_used,
      -convoiq_loyalty_insights_call_level_table.close_strategies_used,
      -convoiq_loyalty_insights_call_level_table.common_learn_strat,
      -convoiq_loyalty_insights_call_level_table.common_provide_strat,
      -convoiq_loyalty_insights_call_level_table.common_close_strat,
      -convoiq_loyalty_insights_call_level_table.combined_strategies_used,
      -convoiq_loyalty_insights_call_level_table.common_combined_strategies_used,
      -convoiq_loyalty_insights_call_level_table.act_combined_strategies_used]
  join: icm_summary_fact {
    type: inner
    relationship: one_to_one
    sql_on: ${convoiq_loyalty_insights_call_level_table.acss_call_id} = ${icm_summary_fact.acss_call_id};;


  }
  join: convoiq_loyalty_insights_offer_level_table {
    type: inner
    relationship: one_to_one
    sql_on: ${convoiq_loyalty_insights_offer_level_table.acss_call_id} = ${icm_summary_fact.acss_call_id};;
  }
}
