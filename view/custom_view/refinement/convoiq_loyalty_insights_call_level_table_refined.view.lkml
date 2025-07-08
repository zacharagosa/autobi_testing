include: "/view/base_view/fact/convoiq_loyalty_insights_call_level_table.view.lkml"

view: +convoiq_loyalty_insights_call_level_table {

  measure: total_offers_accepted {
    type: sum
    label: "Total Offers Accepted"
    description: "Sum of all offers accepted by customers."
    sql: ${num_offers_accepted} ;;
  }
  measure: avg_offers_accepted {
    type: average
    label: "Average Offers Accepted"
    description: "Average number of offers accepted per call."
    sql: ${num_offers_accepted} ;;
  }
  measure: total_offers_pitched {
    type: sum
    label: "Total Offers Pitched"
    description: "Sum of all offers pitched by agents."
    sql: ${num_offers_pitched} ;;
  }
  measure: avg_customer_emotion_lift {
    type: average
    label: "Average Customer Emotion Lift"
    description: "Average change in customer emotion during calls."
    sql: ${customer_emotion_lift} ;;
  }
  measure: total_efforts_used {
    type: sum
    label: "Total Efforts Used"
    description: "Sum of all efforts used by agents."
    sql: ${efforts_used} ;;
  }
  measure: avg_efforts_used {
    type: average
    label: "Average Efforts Used"
    description: "Average number of efforts used per call."
    sql: ${efforts_used} ;;
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

# view: convoiq_loyalty_insights_call_level_table_refined {
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
