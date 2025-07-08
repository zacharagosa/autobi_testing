include: "/view/base_view/fact/convoiq_loyalty_insights_offer_level_table.view.lkml"

view: +convoiq_loyalty_insights_offer_level_table {
  measure: accepted_offers {
    type: sum
    label: "Accepted Offers"
    description: "Total number of offers accepted by customers."
    value_format_name: "decimal_0"
    sql: ${accepted_offer_flag} ;;
  }
  measure: rejected_offers {
    type: sum
    label: "Rejected Offers"
    description: "Total number of offers rejected by customers."
    value_format_name: "decimal_0"
    sql: ${rejected_offer_flag} ;;
  }
  measure: acceptance_rate {
    type: number
    label: "Acceptance Rate (%)"
    description: "Percentage of offers accepted by customers."
    value_format_name: "percent_2"
    sql: CASE WHEN ${callcount} = 0 THEN NULL ELSE CAST(${accepted_offers} AS FLOAT)/NULLIF(${callcount},0) END ;;
  }
  measure: rejection_rate {
    type: number
    label: "Rejection Rate (%)"
    description: "Percentage of offers rejected by customers."
    value_format_name: "percent_2"
    sql: CASE WHEN ${callcount} = 0 THEN NULL ELSE CAST(${rejected_offers} AS FLOAT)/NULLIF(${callcount},0) END ;;
  }
  measure: avg_customer_emotion_lift {
    type: average
    label: "Average Customer Emotion Lift"
    description: "Average change in customer emotion from start to end of call (scale -4 to +4)."
    value_format_name: "decimal_2"
    sql: ${customer_emotion_lift} ;;
  }
  measure: pb_eligible_offers {
    type: sum
    label: "PB Eligible Offers"
    description: "Total number of offers where the customer was eligible for PB offers."
    value_format_name: "decimal_0"
    sql: ${pb_eligibility_flag} ;;
  }
  measure: pb_available_offers {
    type: sum
    label: "PB Available Offers"
    description: "Total number of offers where PB offers were available."
    value_format_name: "decimal_0"
    sql: ${pb_offer_available_flag} ;;
  }
  measure: saved_customers {
    type: sum
    label: "Saved Customers"
    description: "Total number of customers retained (saved) after the offer."
    value_format_name: "decimal_0"
    sql: ${save_flag} ;;
  }
  measure: save_rate {
    type: number
    label: "Save Rate (%)"
    description: "Percentage of customers retained (saved) after the offer."
    value_format_name: "percent_2"
    sql: CASE WHEN ${callcount} = 0 THEN NULL ELSE CAST(${saved_customers} AS FLOAT)/NULLIF(${callcount},0) END ;;
  }

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

# view: convoiq_loyalty_insights_offer_level_table_refined {
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
