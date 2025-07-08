view: convoiq_loyalty_insights_offer_level_table {
  sql_table_name: `vz-it-np-j1kv-dev-earef-0.convoiq.convoiq_loyalty_insights_offer_level_table` ;;

  dimension: accepted_offer_flag {
    type: number
    label: "Accepted Offer Flag"
    description: "Indicates whether the customer accepted the offer (1 = accepted, 0 = not accepted)."
    sql: ${TABLE}.accepted_offer_flag ;;
  }
  dimension: acss_call_id {
    type: string
    label: "ACSS Call ID"
    primary_key: yes
    description: "Call id for the call between the agent and the customer."
    sql: ${TABLE}.acss_call_id ;;
  }
  dimension: attempt_to_resolve_customer_issue {
    type: string
    label: "Attempt to Resolve Customer Issue"
    description: "Feature to check whether the agent was able to assist the customer in getting the issue resolved."
    sql: ${TABLE}.attempt_to_resolve_customer_issue ;;
  }
  dimension: billing_issue_category {
    type: string
    label: "Billing Issue Category"
    description: "Feature to list the reason why customer called for billing intent."
    sql: ${TABLE}.billing_issue_category ;;
  }
  dimension: can_customer_be_saved {
    type: string
    label: "Can Customer Be Saved"
    description: "Feature to determine whether the customer can be saved from disconnecting from us."
    sql: ${TABLE}.can_customer_be_saved ;;
  }
  dimension: customer_emotion_lift {
    type: number
    label: "Customer Emotion Lift"
    description: "Feature for customer emotions on the call from the start to the end on a scale between -4 to +4."
    sql: ${TABLE}.customer_emotion_lift ;;
  }
  dimension: customer_emotion_lift_bucket {
    type: string
    label: "Customer Emotion Lift Bucket"
    description: "Feature to determine whether there was a change in terms of customers' emotions."
    sql: ${TABLE}.customer_emotion_lift_bucket ;;
  }
  dimension: customer_mentioned_competitor_name {
    type: string
    label: "Customer Mentioned Competitor Name"
    description: "Feature to understand if the customer provided a competitor name on call."
    sql: ${TABLE}.customer_mentioned_competitor_name ;;
  }
  dimension: customer_response {
    type: string
    label: "Customer Response"
    description: "Feature to check whether the customer accepted the offer."
    sql: ${TABLE}.customer_response ;;
  }
  dimension: customer_response_reasons {
    type: string
    label: "Customer Response Reasons"
    description: "Feature for the reason provided by the customer on why they chose to accept, reject, or had interest in the offer."
    sql: ${TABLE}.customer_response_reasons ;;
  }
  dimension: date {
    type: string
    label: "Date"
    description: "Feature for the date the customer called in for the issue."
    sql: ${TABLE}.date ;;
  }
  dimension: disconnect_issue_category {
    type: string
    label: "Disconnect Issue Category"
    description: "Feature to list the reason why customer called for disconnect intent."
    sql: ${TABLE}.disconnect_issue_category ;;
  }
  dimension_group: insert_dt {
    type: time
    label: "Insert Date"
    description: "Feature for current date."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.insert_dt ;;
  }
  dimension: insert_time {
    type: string
    label: "Insert Time"
    description: "Feature for the time the record was inserted."
    sql: ${TABLE}.insert_time ;;
  }
  dimension: issue_primary_intent {
    type: string
    label: "Issue Primary Intent"
    description: "Feature to determine the primary intent of the customer's issue."
    sql: ${TABLE}.issue_primary_intent ;;
  }
  dimension: lift_flag {
    type: number
    label: "Lift Flag"
    description: "Feature to indicate whether there was a lift in customer sentiment."
    sql: ${TABLE}.lift_flag ;;
  }
  dimension: offer_type_feature {
    type: string
    label: "Offer Type Feature"
    description: "Feature to categorize the type of offer made to the customer."
    sql: ${TABLE}.offer_type_feature ;;
  }
  dimension: pb_eligibility_flag {
    type: number
    label: "PB Eligibility Flag"
    description: "Feature to indicate whether the customer is eligible for a Pink or blue offer."
    sql: ${TABLE}.pb_eligibility_flag ;;
  }
  dimension: pb_offer_availability {
    type: string
    label: "PB Offer Availability"
    description: "Feature to indicate the availability of PB offers."
    sql: ${TABLE}.pb_offer_availability ;;
  }
  dimension: pb_offer_available_flag {
    type: number
    label: "PB Offer Available Flag"
    description: "Feature to indicate whether a PB offer is available (1 = available, 0 = not available)."
    sql: ${TABLE}.pb_offer_available_flag ;;
  }
  dimension: pb_offer_eligibility {
    type: string
    label: "PB Offer Eligibility"
    description: "Feature to describe the eligibility criteria for Pink/blue offers.Indicated by 'Eligible' and 'Not Eligible'"
    sql: ${TABLE}.pb_offer_eligibility ;;
  }
  dimension: quality_promo_pitch {
    type: string
    label: "Quality Promo Pitch"
    description: "Feature to assess the quality of the promotional pitch made to the customer."
    sql: ${TABLE}.quality_promo_pitch ;;
  }
  dimension: rejected_offer_flag {
    type: number
    label: "Rejected Offer Flag"
    description: "Indicates whether the customer rejected the offer (1 = rejected, 0 = not rejected)."
    sql: ${TABLE}.rejected_offer_flag ;;
  }
  dimension_group: rpt_dt {
    type: time
    label: "Report Date"
    description: "Feature for the date the report was generated."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.rpt_dt ;;
  }
  dimension: save_flag {
    type: number
    label: "Save Flag"
    description: "Feature to indicate whether the customer was saved (1 = saved, 0 = not saved)."
    sql: ${TABLE}.save_flag ;;
  }
  dimension: score_model_id {
    type: string
    label: "Score Model ID"
    description: "Feature to identify the scoring model used for the customer interaction."
    sql: ${TABLE}.score_model_id ;;
  }

  measure: callcount {
    type: count
    label: "Call Count"
  }

}
