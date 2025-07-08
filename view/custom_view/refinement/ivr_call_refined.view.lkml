include: "/view/base_view/fact/ivr_call.view.lkml"

view: +ivr_call {

  measure: total_calls {
    type: sum
    description: "Total Number of calls (prepaid + postpaid)."
    sql: ${total_prepaid_calls} + ${total_postpaid_calls} ;;
    value_format_name: id
  }

  measure: total_prepaid_calls {
    type: sum
    description: "Total number of prepaid calls."
    sql: IF(${prepaid_ind} = 'Y', 1, 0) ;;
    value_format_name: id
  }

  measure: total_postpaid_calls {
    type: sum
    description: "Total number of postpaid calls."
    sql: IF(${prepaid_ind} = 'N', 1, 0) ;;
    value_format_name: id
  }

  measure: total_calls {
    type: count_distinct
    description: "Total Number of calls."
    sql: ${ivr_call_id} ;;
  }
}
# view: ivr_call_exp_refined {
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
