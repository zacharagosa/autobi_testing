connection: "ea3"


include: "/explore/sentiment_analysis.explore.lkml"
include: "/explore/loyalty_insights.explore.lkml"
include: "/explore/base_management.explore.lkml"
include: "/explore/loyalty_churn_insights.explore.lkml"
include: "/explore/callcenter_metrics.explore.lkml"




             # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }
