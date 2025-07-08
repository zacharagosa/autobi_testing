view: convoiq_loyalty_insights_call_level_table {
  sql_table_name: `vz-it-np-j1kv-dev-earef-0.convoiq.convoiq_loyalty_insights_call_level_table` ;;

  dimension: accepted_ats_combinations {
    type: string
    label: "Accepted Agent Tool Box (ATS) Type Offer Combinations"
    description: "Type of a offer(ATS - Agent Tool Box) pitched by the agent which was accepted by the customer.ATS refers to tangible actions or efforts made by an agent with the explicit goal of preventing customer churn. An accepted ATS signifies that the customer responded positively to the agent's action or accepted the proposed solution/effort and combinations denotes there could not more than one offer that are seperated by '+'"
    sql: ${TABLE}.accepted_ats_combinations ;;
  }
  dimension: accepted_offer_combinations {
    type: string
    label: "Accepted Offer(All types) Combinations"
    description: "Any type of Offer combinations which the customer accepted."
    sql: ${TABLE}.accepted_offer_combinations ;;
  }
  dimension: acss_call_id {
    type: string
    label: "ACSS Call ID"
    primary_key: yes
    description: "Call id for the call between the agent and the customer."
    sql: ${TABLE}.acss_call_id ;;
  }
  dimension: act_close_strategies_used {
    type: string
    label: "Actionable Close Strategies Not Used"
    description: "Actions not done by the agent on the call that could have been done (Close phase)."
    sql: ${TABLE}.act_close_strategies_used ;;
  }
  dimension: act_combined_strategies_used {
    type: string
    label: "Actionable Combined Strategies Not Used"
    description: "Combines the non-actions that could have been done by the agent."
    sql: ${TABLE}.act_combined_strategies_used ;;
    hidden: yes
  }
  dimension: act_learn_strategies_used {
    type: string
    label: "Actionable Learn Strategies Not Used"
    description: "Actions not done by the agent on the call that could have been done (Learn phase)."
    sql: ${TABLE}.act_learn_strategies_used ;;
  }
  dimension: act_provide_strategies_used {
    type: string
    label: "Actionable Provide Strategies Not Used"
    description: "Actions not done by the agent on the call that could have been done (Provide phase)."
    sql: ${TABLE}.act_provide_strategies_used ;;
  }
  dimension: agent_tool_box_used {
    type: number
    label: "Agent Toolbox Used"
    description: "Indicates if agent used agent toolbox method to retain the customer.ATS refers to tangible actions or efforts made by an agent with the explicit goal of preventing customer churn"
    sql: ${TABLE}.agent_tool_box_used ;;
  }
  dimension: attempt_to_resolve_customer_issue {
    type: string
    label: "Agent Attempted Resolution"
    description: "Whether the agent was able to assist the customer in getting the issue resolved."
    sql: ${TABLE}.attempt_to_resolve_customer_issue ;;
  }
  dimension: billing_issue_category {
    type: string
    label: "Billing Issue Category"
    description: "Reason why customer called for billing intent."
    sql: ${TABLE}.billing_issue_category ;;
  }
  dimension: can_customer_be_saved {
    type: string
    label: "Customer Save Potential"
    description: "Determines whether the customer can be saved from disconnecting."
    sql: ${TABLE}.can_customer_be_saved ;;
  }
  dimension: close_strategies_used {
    type: string
    label: "Close Strategies Used"
    description: "List of strategies to close the issue for the customer."
    sql: ${TABLE}.close_strategies_used ;;
    hidden: yes
  }
  dimension: combined_strategies_used {
    type: string
    label: "Combined Strategies Used"
    description: "Combines learn, provide, and close strategies used by the agent."
    sql: ${TABLE}.combined_strategies_used ;;
    hidden: yes
  }
  dimension: common_close_strat {
    type: string
    label: "Common Close Strategies"
    description: "List of common strategies to help close the issue for the customer."
    sql: ${TABLE}.common_close_strat ;;
    hidden: yes
  }
  dimension: common_combined_strategies_used {
    type: string
    label: "Common Combined Strategies"
    description: "Lists the commonly combined strategies that help the customer."
    sql: ${TABLE}.common_combined_strategies_used ;;
    hidden: yes
  }
  dimension: common_learn_strat {
    type: string
    label: "Common Learn Strategies"
    description: "List of common strategies to learn how the agent should act."
    sql: ${TABLE}.common_learn_strat ;;
    hidden: yes
  }
  dimension: common_provide_strat {
    type: string
    label: "Common Provide Strategies"
    description: "List of common strategies to provide support to the customer."
    sql: ${TABLE}.common_provide_strat ;;
    hidden: yes
  }
  dimension: customer_emotion_lift {
    type: number
    label: "Customer Emotion Lift"
    description: "Customer emotions on the call from start to end, on a scale between -4 to +4."
    sql: ${TABLE}.customer_emotion_lift ;;
  }
  dimension: customer_emotion_lift_bucket {
    type: string
    label: "Customer Emotion Change"
    description: "Indicates whether there was a change in customer emotions during the call."
    sql: ${TABLE}.customer_emotion_lift_bucket ;;
  }
  dimension: customer_mentioned_competitor_name {
    type: string
    label: "Competitor Mentioned"
    description: "Indicates if the customer provided a competitor name on call."
    sql: ${TABLE}.customer_mentioned_competitor_name ;;
  }
  dimension: date {
    type: string
    label: "Call Date"
    description: "Date the customer called in for the issue."
    sql: ${TABLE}.date ;;
  }
  dimension: disconnect_issue_category {
    type: string
    label: "Disconnect Issue Category"
    description: "Reason why customer called for disconnect intent."
    sql: ${TABLE}.disconnect_issue_category ;;
  }
  dimension: efforts_used {
    type: number
    label: "Efforts Used"
    description: "Indicates agent used efforts to assist the customer. efforts means other than offers and it has various actions that can be taken by agent."
    sql: ${TABLE}.efforts_used ;;
  }
  dimension_group: insert_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    label: "Insert Date"
    description: "Current date."
    sql: ${TABLE}.insert_dt ;;
  }
  dimension: insert_time {
    type: string
    label: "Insert Time"
    description: "Current time."
    sql: ${TABLE}.insert_time ;;
  }
  dimension: interested_ats_combinations {
    type: string
    label: "Interested ATS Combinations"
    description: "Type of offer pitched for which the customer was interested."
    sql: ${TABLE}.interested_ats_combinations ;;
  }
  dimension: interested_offer_combinations {
    type: string
    label: "Interested Offer Combinations"
    description: "Offer combinations which the customer was interested in."
    sql: ${TABLE}.interested_offer_combinations ;;
  }
  dimension: issue_primary_intent {
    type: string
    label: "Primary Call Intent"
    description: "Main purpose of the call from the customer."
    sql: ${TABLE}.issue_primary_intent ;;
  }
  dimension: learn_strategies_used {
    type: string
    label: "Learn Strategies Used"
    description: "List of strategies to learn how the agent acted on the call."
    sql: ${TABLE}.learn_strategies_used ;;
    hidden: yes
  }
  dimension: lift_flag {
    type: number
    label: "Positive Emotion at End"
    description: "Indicates whether the customer's emotions at the end of the call were positive."
    sql: ${TABLE}.lift_flag ;;
  }
  dimension: min_1_ats_accepted_flag {
    type: number
    label: "Min 1 ATS Accepted Flag"
    description: "Indicates customer accepted at least one proposed offer by agent."
    sql: ${TABLE}.min_1_ats_accepted_flag ;;
  }
  dimension: min_1_offer_accepted_flag {
    type: number
    label: "Min 1 Offer Accepted Flag"
    description: "Indicates customer accepted at least one offer."
    sql: ${TABLE}.min_1_offer_accepted_flag ;;
  }
  dimension: num_accepted_ats_combinations {
    type: number
    label: "Number of ATS Accepted"
    description: "Count of ATS offers accepted by the customer."
    sql: ${TABLE}.num_accepted_ats_combinations ;;
  }
  dimension: num_efforts_used {
    type: number
    label: "Number of Efforts Used"
    description: "Number of efforts used by the agent."
    sql: ${TABLE}.num_efforts_used ;;
  }
  dimension: num_interested_ats_combinations {
    type: number
    label: "Number of ATS Interested"
    description: "Count of ATS offers the customer was interested in."
    sql: ${TABLE}.num_interested_ats_combinations ;;
  }
  dimension: num_offers_accepted {
    type: number
    label: "Number of Offers Accepted"
    description: "Count of offers accepted by the customer."
    sql: ${TABLE}.num_offers_accepted ;;
  }
  dimension: num_offers_interested {
    type: number
    label: "Number of Offers Interested"
    description: "Count of offers the customer was interested in."
    sql: ${TABLE}.num_offers_interested ;;
  }
  dimension: num_offers_pitched {
    type: string
    label: "Number of Offers Pitched"
    description: "Total number of offers pitched by the agent."
    sql: ${TABLE}.num_offers_pitched ;;
  }
  dimension: num_offers_rejected {
    type: number
    label: "Number of Offers Rejected"
    description: "Count of offers rejected by the customer."
    sql: ${TABLE}.num_offers_rejected ;;
  }
  dimension: num_pitched_ats_combinations {
    type: string
    label: "Number of ATS Pitched"
    description: "Total number of ATS offers pitched by the agent."
    sql: ${TABLE}.num_pitched_ats_combinations ;;
  }
  dimension: num_rejected_ats_combinations {
    type: number
    label: "Number of ATS Rejected"
    description: "Count of ATS offers rejected by the customer."
    sql: ${TABLE}.num_rejected_ats_combinations ;;
  }
  dimension: offer_used {
    type: number
    label: "Offer Used"
    description: "Indicates if agent used offer method to retain the customer."
    sql: ${TABLE}.offer_used ;;
  }
  dimension: offers_toolbox_pitched {
    type: string
    label: "Offers and Toolbox Pitched"
    description: "Offers and toolbox pitched by the agent."
    sql: ${TABLE}.offers_toolbox_pitched ;;
  }
  dimension: pb_eligibility_flag {
    type: number
    label: "Pink/Blue Eligibility Flag"
    description: "Indicates if customer is eligible for pink and blue offers."
    sql: ${TABLE}.pb_eligibility_flag ;;
  }
  dimension: pb_offer_availability {
    type: string
    label: "Pink/Blue Offer Availability"
    description: "Indicates if pink/blue/both offers are available for the customer."
    sql: ${TABLE}.pb_offer_availability ;;
  }
  dimension: pb_offer_eligibility {
    type: string
    label: "Pink/Blue Offer Eligibility"
    description: "Indicates if the customer is eligible for pink and blue offers."
    sql: ${TABLE}.pb_offer_eligibility ;;
  }
  dimension: pitched_ats_combinations {
    type: string
    label: "Pitched ATS Combinations"
    description: "Types of offers provided by the agent that do not get tracked by offer code."
    sql: ${TABLE}.pitched_ats_combinations ;;
  }
  dimension: pitched_efforts_combinations {
    type: string
    label: "Pitched Efforts Combinations"
    description: "Combination of efforts on the call."
    sql: ${TABLE}.pitched_efforts_combinations ;;
  }
  dimension: pitched_offer_combinations {
    type: string
    label: "Pitched Offer Combinations"
    description: "All offers provided by the agent."
    sql: ${TABLE}.pitched_offer_combinations ;;
  }
  dimension: provide_strategies_used {
    type: string
    label: "Provide Strategies Used"
    description: "List of strategies to assist the customer on the call."
    sql: ${TABLE}.provide_strategies_used ;;
    hidden: yes
  }
  dimension: rejected_ats_combinations {
    type: string
    label: "Rejected ATS Combinations"
    description: "Type of offer pitched by the agent which was rejected by the customer."
    sql: ${TABLE}.rejected_ats_combinations ;;
  }
  dimension: rejected_offer_combinations {
    type: string
    label: "Rejected Offer Combinations"
    description: "Offer combinations which the customer rejected."
    sql: ${TABLE}.rejected_offer_combinations ;;
  }
  dimension: retention_tools_used {
    type: string
    label: "Retention Tools Used"
    description: "Retention type used by the agent to retain the customer."
    sql: ${TABLE}.retention_tools_used ;;
  }
  dimension_group: rpt_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    label: "Report Date"
    description: "Report date during which the program was executed."
    sql: ${TABLE}.rpt_dt ;;
  }
  dimension: save_flag {
    type: number
    label: "Customer Churn Flag"
    description: "Indicates if customer did not continue services with us."
    sql: ${TABLE}.save_flag ;;
  }
  dimension: score_model_id {
    type: string
    label: "Score Model ID"
    description: "Score model id."
    sql: ${TABLE}.score_model_id ;;
  }
  dimension: strategy_emphasis {
    type: string
    label: "Strategy Emphasis"
    description: "Indicates how much of each learn/provide/close was done by the agent."
    sql: ${TABLE}.strategy_emphasis ;;

  }

  measure: callcount {
    type: count
    label: "Call Count"
  }
}
