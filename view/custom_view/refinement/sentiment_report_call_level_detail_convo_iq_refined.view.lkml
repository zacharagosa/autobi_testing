include: "/view/base_view/fact/sentiment_report_call_level_detail_convo_iq.view.lkml"

view: +sentiment_report_call_level_detail_convo_iq {

  # # dimension: confidence_score_l3_numeric {  ## remove this is a duplicate
  # #   type: number
  # #   sql:  SAFE_CAST(${confidence_score_l3} as NUMERIC);;
  # # }

  # dimension: confidence_score_l3 {
  #   type: number
  #   sql: SAFE_CAST(${confidence_score_l4} as NUMERIC);;
  # }

  # # dimension: confidence_score_l4_numeric { ## remove duplicate
  # #   type: number
  # #   sql: SAFE_CAST(${confidence_score_l4} as NUMERIC);; }

  # dimension: confidence_score_l4 {
  #   type: number
  #   sql: SAFE_CAST(${confidence_score_l4} as NUMERIC);;

  # }

  # # dimension: confidence_score_pi_sentiment_numeric { ## remove duplicate
  # #   type: number
  # #   sql: SAFE_CAST(${confidence_score_pi_sentiment} as NUMERIC);;
  # # }

  # dimension: confidence_score_pi_sentiment { ## remove duplicate
  #   type: number
  #   sql: SAFE_CAST(${confidence_score_pi_sentiment} as NUMERIC);;
  # }


  # Hide dimensions with only null values
  dimension: acss_callid {
    hidden: yes
  }
  dimension: call_quality_score {
    hidden: yes
  }
  dimension: preprocessed_clean {
    hidden: yes
  }
  dimension: primary_topic_sentiment {
    hidden: yes
  }
  dimension: l4_category {
    hidden: yes
  }
  dimension: issue_resolution {
    hidden: yes
  }
  dimension: intention {
    hidden: yes
  }
  dimension: customer_upset_reason {
    hidden: yes
  }
  dimension: customer_need {
    hidden: yes
  }
  dimension: primary_intent_confidence_score {
    hidden: yes
  }
  dimension: overall_action_by_customer {
    hidden: yes
  }
  dimension: troubleshooting_unresolvedissue {
    hidden: yes
  }
  dimension: customer_issue_reason {
    hidden: yes
  }
  dimension: agent_issue_reason {
    hidden: yes
  }
  dimension: device_name {
    hidden: yes
  }
  dimension: feature_name {
    hidden: yes
  }
  dimension: semantic_layer_mapping {
    hidden: yes
  }

  # Hide derived numeric dimensions and measures referencing these columns
  dimension: primary_intent_confidence_score_numeric {
    hidden: yes
    type: number
    sql: SAFE_CAST(${primary_intent_confidence_score} as NUMERIC) ;;
  }
  measure: sum_call_quality_score {
    hidden: yes
    type: sum
    label: "Sum of Call Quality Score"
    group_label: "Call Metrics"
    description: "The total call quality scores." ## updated description to remove sum of total
    sql: ${call_quality_score} ;;
  }
  measure: avg_call_quality_score {
    hidden: yes
    label: "Average Call Quality Score"
    description: "The average call quality score across all calls."
    type: average
    sql: ${call_quality_score} ;;
  }
  measure: sum_primary_intent_confidence_score {
    hidden: yes
    type: sum
    label: "Sum of Primary Intent Confidence Score"
    group_label: "Confidence Metrics"
    description: "The total primary intent confidence scores." ## updated description to remove total sum of
    sql: ${primary_intent_confidence_score_numeric} ;;
  }



  measure: sum_totalcalltime {
    type: sum
    label: "Total Call Time"
    group_label: "Call Metrics"
    description: "The total time customers spent on calls."
    sql: ${totalcalltime} ;;
  }



  measure: sum_confidence_score_l3 {
    type: sum
    label: "Sum of Confidence Score L3"
    group_label: "Confidence Metrics"
    description: "The total confidence scores for Level 3." ## remove total sum of
 #   sql: ${confidence_score_l3_numeric} ;;
    sql: ${confidence_score_l3} ;;
  }

  measure: sum_confidence_score_l4 {
    type: sum
    label: "Sum of Confidence Score L4"
    group_label: "Confidence Metrics"
    description: "The total confidence scores for Level 4." # removed total sum of
  #  sql: ${confidence_score_l4_numeric} ;;
    sql: ${confidence_score_l4} ;;
  }

  measure: sum_confidence_score_pi_sentiment {
    type: sum
    label: "Sum of Confidence Score PI Sentiment"
    group_label: "Confidence Metrics"
    description: "The total confidence scores for PI sentiment." # removed total sum of
   # sql: ${confidence_score_pi_sentiment_numeric} ;;
    sql: ${confidence_score_pi_sentiment} ;;
  }


  measure: sum_primary_intent_confidence_score {
    type: sum
    label: "Sum of Primary Intent Confidence Score"
    group_label: "Confidence Metrics"
    description: "The total primary intent confidence scores." # removed total sum of
    sql: ${primary_intent_confidence_score_numeric} ;;
  }


  measure: sum_totalcalltime {
 #   label: "Sum of Total Call Time"
  label: "Total Call Duration"
 ##   description: "The total call duration (time) customers had a conversation with the agent." # removed total sum of and changed time to call
    description: "The total call duration (time) with a customer."
    type: sum
    sql: ${totalcalltime} ;;
  }

  measure: avg_totalcalltime {
#    label: "Average Total Call Time"
    label: "Average Call Duration"
    description: "The average call duration (time) with a customer."
##    description: "The average time duration customers had a conversation with the agent.
    type: average
    sql: ${totalcalltime} ;;
  }

  measure: sum_totalholdtime {
#    label: "Sum of Total Hold Time" ##Why not simply total hold time
    label: "Total Hold Time"
    description: "The total length of time a customer was on hold before connected to an agent."
#    description: "The total sum of time customers were on hold before the call connected to the agent."
    type: sum
    sql: ${totalholdtime} ;;
  }

  measure: avg_totalholdtime {
#    label: "Average Total Hold Time" ## Can we change this to Average hold time.
    label: "Average Hold Time"
    description: "The average amount of time a customer was on hold before connected to an agent."
#    description: "The average time customers were on hold before the call connected to the agent."
    type: average
    sql: ${totalholdtime} ;;
  }

  measure: avg_call_quality_score {
    label: "Average Call Quality Score"
    description: "The average call quality score across all calls."
    type: average
    sql: ${call_quality_score} ;;
    hidden: yes
  }

  measure: avg_confidence_score_l3 {
    label: "Average Confidence Score L3"
    description: "The average confidence score for Level 3 pain points."
    type: average
#    sql: ${confidence_score_l3_numeric} ;;
    sql: ${confidence_score_l3} ;;
  }

  measure: avg_confidence_score_l4 {
    label: "Average Confidence Score L4"
    description: "The average confidence score for Level 4 root causes."
    type: average
  #  sql: ${confidence_score_l4_numeric} ;;
    sql: ${confidence_score_l4} ;;

  }

  measure: avg_confidence_score_pi_sentiment {
    label: "Average Confidence Score for Primary Intent Sentiment"
    description: "The average confidence score for primary intent sentiment."
    type: average
    sql: ${confidence_score_pi_sentiment} ;;
#    sql: ${confidence_score_pi_sentiment_numeric} ;;

  }

  #measure: overall_sentiment_positive_count {
  #  label: "Total Positive Sentiment Calls" ## added by Lyndsey
  #  type: count
  #  filters: [overall_sentiment:  "Positive"] # Refers to the 'sentiment' dimension defined above
  #  description: "Number of calls with positive overall sentiment"
  #}

  #measure: overall_sentiment_negative_count {
  #  label: "Total Negative Sentiment Calls"
  #  type: count
  #  filters: [overall_sentiment:  "Negative"] # Refers to the 'sentiment' dimension defined above
  #  description: "Number of calls with negative overall sentiment"
  #}

  #measure: overall_sentiments_neutral_count {
  #  type: count
  #  filters: [overall_sentiment: "Neutral"]
  #  description: "Number of calls with neutral overall sentiment"
  #}

  # # You can specify the table name if it's different from the view name:
  # sql_table_name: my_schema_name.tester ;;
  #
  # # Define your dimensions and measures here, like this:
  # dimension: user_id {
  #   description: "Unique ID for each user that has ordered"
  #   type: number
  #   sql: ${TABLE}.user_id ;;
  # }
  #
  # dimension: lifetime_orders {
  #   description: "The total number of orders for each user"
  #   type: number
  #   sql: ${TABLE}.lifetime_orders ;;
  # }
  #
  # dimension_group: most_recent_purchase {
  #   description: "The date when each user last ordered"
  #   type: time
  #   timeframes: [date, week, month, year]
  #   sql: ${TABLE}.most_recent_purchase_at ;;
  # }
  #
  # measure: total_lifetime_orders {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: sum
  #   sql: ${lifetime_orders} ;;
  # }
}

# view: sentiment_report_call_level_detail_convo_iq_refined {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
