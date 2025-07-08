include: "/view/base_view/fact/churn_sum_fact.view.lkml"

view: +churn_sum_fact {

  measure: total_voluntary_disconnects {
    type: sum
    label: "Total voluntary disconnects"
    description: "Sum of voluntary disconnects"
    sql: ${voluntary_disconnects} ;;
  }

  measure: total_involuntary_disconnects {
    type: sum
    label: "Total involuntary disconnects"
    description: "Sum of involuntary disconnects"
    sql: ${involuntary_disconnects} ;;
  }

  measure: total_disconnects {
    type: sum
    label: "Total disconnects"
    description: "Sum of voluntary and involuntary disconnects"
    sql: ${disconnects} ;;
  }

  measure: avg_arpu_6_mths {
    type: average
    label: "Average ARPU over last 6 months"
    description: "Average of ARPU over last 6 months"
    sql: ${arpu_6month_line_avg} ;;
  }
#Not able to execute this on Looker
  measure: total_disconnects_previous_month {
    type: period_over_period
    label: "Total Disconnects (Previous Month)"
    description: "Total disconnects for the previous month."
   based_on: total_disconnects
  based_on_time: mth_date
    period: month
    kind: previous
  }

}
