view: sentiment_report_call_level_detail_convo_iq {
  sql_table_name: `aragosalooker.verizon_autobi..sentiment_report_call_level_detail_convoIQ` ;;


  dimension: acss_callid {
    label: "ACSS Call ID"
    description: "Unique identifier for each call handled by ACSS."
    type: string
    sql: ${TABLE}.acss_callid ;;
  }
  dimension: agent_issue_reason {
    label: "Agent Issue Reason"
    description: "Based on the conversation the actual issue of the customer mentioned by the agent"
    type: string
    sql: ${TABLE}.agent_issue_reason ;;
  }
  dimension: agent_res_customer_concern {
    label: "Agent Resolution of Customer Concern"
    description: "Description of the resolution provided by the agent during the call."
    type: string
    sql: ${TABLE}.agent_res_customer_concern ;;
  }
  dimension: agent_resolution {
    label: "Agent Resolution"
    description: "It captures the resolution provided by the agent"
    type: string
    sql: ${TABLE}.agent_resolution ;;
  }
  dimension_group: call_date_est {
    label: "Call Date (EST)"
    description: "Call Date but not used for reporting."
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.call_date_est ;;
  }
  dimension: call_disconnection {
    label: "Customer Call Terminated"
    description: "Whether the customer hung up/terminated from the call before resolution is provided."
    type: string
    sql: ${TABLE}.call_disconnection ;;
  }
  dimension: call_quality_score {
    label: "Call Quality Score"
    description: "A numerical score representing the quality of the call as assessed by predefined metrics."
    type: string
    sql: ${TABLE}.call_quality_score ;;
  }
  dimension: callback_promised {
    label: "Callback Promised"
    description: "Indicates if the agent promised a callback to the customer (Yes/No)."
    type: string
    sql: ${TABLE}.callback_promised ;;
  }
  dimension: confidence_score_l3 {
    label: "Confidence Score L3"
    description: "The confidence level (0-1) assigned by the LLM for identifying the customer's L3 pain points."
    type: string
    sql: ${TABLE}.confidence_score_l3 ;;
  }
  dimension: confidence_score_l4 {
    label: "Confidence Score L4"
    description: "The confidence level (0-1) assigned by the LLM for identifying the customer's L4 root cause."
    type: string
    sql: ${TABLE}.confidence_score_l4 ;;
  }
  dimension: confidence_score_pi_sentiment {
    label: "Confidence Score for Primary Intent Sentiment"
    description: "Confidence score of the customer's sentiment with respect to primary intent identified"
    type: string
    sql: ${TABLE}.confidence_score_pi_sentiment ;;
  }
  dimension: cust_id {
    label: "Customer ID"
    description: "Customer unique identifier"
    type: string
    sql: ${TABLE}.cust_id ;;
  }
  dimension: customer_issue_reason {
    label: "Customer Issue Reason"
    description: "Over the call what is the issue raised by the customer like why they made a call"
    type: string
    sql: ${TABLE}.customer_issue_reason ;;
  }
  dimension: customer_need {
    label: "Customer Need"
    description: "It tells what the customer is looking for or what they are expecting"
    type: string
    sql: ${TABLE}.customer_need ;;
  }
  dimension: customer_upset_reason {
    label: "Customer Upset Reason"
    description: "Reason for customer upset"
    type: string
    sql: ${TABLE}.customer_upset_reason ;;
  }
  dimension: device_name {
    label: "Device Name"
    description: "List of devices mentioned in the call."
    type: string
    sql: ${TABLE}.device_name ;;
  }
  dimension: dnis_cd {
    label: "DNIS Code"
    type: string
    sql: ${TABLE}.dnis_cd ;;
  }
  dimension: endtime_ts {
    label: "End Time Timestamp"
    description: "The time customer call conversation ended with the agent"
    type: string
    hidden: yes
    sql: ${TABLE}.endtime_ts ;;
  }

  dimension_group: event_dt {
    label: "Event Date"
    description: "Date on which customers made a call to IVR. This is the primary reporting date field for all questions"
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.event_dt ;;
  }
  dimension: event_hr {
    label: "Event Hour"
    description: "Hour of the day when the customer initiated the call (in 24-hour format)."
    type: number
    sql: SAFE_CAST(${TABLE}.event_hr AS INT64) ;;
  }
  dimension: feature_name {
    label: "Feature Name"
    description: "List of features mentioned in the call."
    type: string
    sql: ${TABLE}.feature_name ;;
  }
  dimension: firsthalf_sentiment_customer {
    label: "First Half Sentiment (Customer)"
    description: "Customer sentiment in the first half of the call"
    type: string
    sql: ${TABLE}.firsthalf_sentiment_customer ;;
  }
  dimension: intention {
    label: "Customer Intention"
    description: "It tells about the customer intention"
    type: string
    sql: ${TABLE}.intention ;;
  }
  dimension: issue_resolution {
    label: "Issue Resolution"
    description: "Indicates whether the customer's issue was resolved (Yes/No)."
    type: string
    sql: ${TABLE}.issue_resolution ;;
  }
  dimension: ivr_call_id {
    label: "IVR Call ID"
    description: "Unique id generated by IVR for each call"
    primary_key: yes
    type: string
    sql: ${TABLE}.ivr_call_id ;;
  }
  dimension: l1_call_driver {
    label: "L1 Call Driver"
    description: "Top-level category of the customer's issue."
    type: string
    sql: ${TABLE}.l1_call_driver ;;
  }
  dimension: l2_sub_driver_intent {
    label: "L2 Sub Driver Intent"
    description: "Sub-category of the customer's issue."
    type: string
    sql: ${TABLE}.l2_sub_driver_intent ;;
  }
  dimension: l3_call_reason_intention {
    label: "L3 Call Reason Intention"
    description: "Detailed reason for the customer's call."
    type: string
    sql: ${TABLE}.l3_call_reason_intention ;;
  }
  dimension: l3_category {
    label: "L3 Category"
    description: "Category of the reason discussed in the call"
    type: string
    sql: ${TABLE}.l3_category ;;
  }
  dimension: l4_category {
    label: "L4 Category"
    description: "Category of the pain point discussed in the call"
    type: string
    sql: ${TABLE}.l4_category ;;
  }
  dimension: l4_customer_pain_point {
    label: "L4 Customer Pain Point"
    description: "It consists of what issue the customer is facing right now and why they called"
    type: string
    sql: ${TABLE}.l4_customer_pain_point ;;
  }
  dimension: mtn {
    label: "Mobile Telephone Number"
    description: "Mobile telephone number of a customer who made a call to IVR"
    type: string
    sql: ${TABLE}.mtn ;;
  }
  dimension: overall_action_by_customer {
    label: "Overall Action by Customer"
    description: "Over the call conversation, what are all the actions performed by the customer to address their issue or related to that call"
    type: string
    sql: ${TABLE}.overall_action_by_customer ;;
  }
  dimension: overall_sentiment {
    label: "Overall Sentiment"
    description: "The overall sentiment (positive, neutral, or negative) expressed by the customer during the call."
    type: string
    sql: ${TABLE}.overall_sentiment ;;
  }
  dimension: preprocessed_clean {
    label: "Preprocessed Clean Transcript"
    description: "The cleaned version of the call transcript used as input for the LLM."
    type: string
    sql: ${TABLE}.preprocessed_clean ;;
  }
  dimension: primary_intent {
    label: "Primary Intent"
    description: "The main reason for the customer's call as initially identified."
    type: string
    sql: ${TABLE}.primary_intent ;;
  }
  dimension: primary_intent_confidence_score {
    label: "Primary Intent Confidence Score"
    description: "Confidence score of the primary intent that is given by Model output"
    type: string
    sql: ${TABLE}.primary_intent_confidence_score ;;
  }
  dimension: primary_intent_sentiment {
    label: "Primary Intent Sentiment"
    description: "Customer's sentiment with respect to primary intent identified"
    type: string
    sql: ${TABLE}.primary_intent_sentiment ;;
  }
  dimension: primary_intent_updated {
    label: "Updated Primary Intent"
    description: "The main reason for the customer's call after refinement by the LLM."
    type: string
    sql: ${TABLE}.primary_intent_updated ;;
  }
  dimension: primary_topic {
    label: "Primary Topic"
    description: "What is the primary topic in case the customer discussed many topics over the call"
    type: string
    sql: ${TABLE}.primary_topic ;;
  }
  dimension: primary_topic_sentiment {
    label: "Primary Topic Sentiment"
    description: "Customer sentiment on the primary topic"
    type: string
    sql: ${TABLE}.primary_topic_sentiment ;;
  }

  dimension: secondhalf_sentiment_customer {
    label: "Second Half Sentiment (Customer)"
    description: "Customer sentiment in the second half of the call"
    type: string
    sql: ${TABLE}.secondhalf_sentiment_customer ;;
  }
  dimension: semantic_layer_mapping {
    label: "Semantic Layer Mapping"
    description: "Mapping to identify the LLM semantic layer intent"
    type: string
    sql: ${TABLE}.semantic_layer_mapping ;;
  }
  dimension: sls_dist_chnl_grp_cd {
    label: "Sales Distribution Channel Group"
    type: string
    sql: ${TABLE}.sls_dist_chnl_grp_cd ;;
  }
  # dimension: start_tm_ts { ##this is already shown below
  #   label: "Start Time Timestamp"
  #   description: "The time customer call connected to the agent"
  #   type: string
  #   sql: ${TABLE}.start_tm_ts ;;
  # }
  dimension_group: start_tm_ts_est {
    label: "Start Time (EST)"
    description: "The time customer call connected to the agent in EST time zone. Not  used for reporting"
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.start_tm_ts_est ;;
  }
  dimension: summary {
    label: "Call Summary"
    description: "Summary of the call"
    type: string
    sql: ${TABLE}.summary ;;
  }
  dimension: supervisor_escalation {
    label: "Supervisor Escalation"
    description: "Whether the call was escalated to a supervisor."
    type: string
    sql: ${TABLE}.supervisor_escalation ;;
  }
  dimension: topic_category {
    label: "Topic Category"
    description: "Category of the primary topic discussed in the call"
    type: string
    sql: ${TABLE}.topic_category ;;
  }
  dimension: topics {
    label: "Topics Discussed"
    description: "Topics the customer discussed over the call"
    type: string
    sql: ${TABLE}.topics ;;
  }
  dimension: totalcalltime {
    label: "Total Call Time"
    description: "Time duration customer had a conversation with the agent"
    type: number
    sql: ${TABLE}.totalcalltime ;;
  }
  dimension: totalholdtime { ##this says not used for reporting so can it be removed?
    label: "Total Hold Time"
    description: "The duration customer was on hold before the call connected to the agent. not used for reporting"
    type: number
    sql: ${TABLE}.totalholdtime ;;
  }
  dimension: troubleshoot_ticket {
    label: "Troubleshoot Ticket"
    description: "Whether a troubleshooting ticket was created."
    type: string
    sql: ${TABLE}.troubleshoot_ticket ;;
  }
  dimension: troubleshooting_unresolvedissue {
    label: "Troubleshooting Unresolved Issue"
    description: "Details of unresolved issues and the next steps discussed with the customer."
    type: string
    sql: ${TABLE}.troubleshooting_unresolvedissue ;;
  }

  ####Lyndsey added
  measure: callcount {
    label: "Call Count"
    type: count
  }


}
