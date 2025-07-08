include: "/view/base_view/fact/icm_summary_fact.view.lkml"

view: +icm_summary_fact {


  dimension: call_answered_yes_no {
    type: yesno
    label: "Answered call indicator"
    description: "Indicates whether customers call was answered"
    sql: ${answered_cnt} = 1 ;;
  }

  measure: call_answered_count {
    type: count
    label: "Number of calls answered"
    description: "Count of answered calls"
    filters: [call_answered_yes_no: "Yes"]
  }

  measure: calls_to_agent {
    label: "Number of transferred calls"
    description: "The Number of times a call is transferred to acss agent"
    type: count_distinct
    sql: ${acss_call_id} ;;
    filters: [acss_call_id: "-NULL"]
  }

  dimension: transfer_flag {
    hidden: yes
  }

  measure: total_talk_time_seconds {
    type: sum
    label: "Total talk time in seconds"
    description: "Sum of talk time of the call in seconds"
    sql: ${talk_tm_seconds} ;;
  }

  measure: average_talk_time_seconds {
    label: "Average call time in seconds"
    description: "Average call time calculated in seconds"
    type: average
    sql: ${talk_tm_seconds} ;;
    value_format_name: decimal_0
    filters: [call_answered_yes_no: "Yes"]
  }

  measure: abandoned_call_count{
    type: count
    label: "Abandoned call count"
    description: "Number of calls abandoned"
    filters: [abandons_cnt: "1"]
  }

  measure: avg_time_to_abandon_seconds {
    type: average
    label: "Average time to abandon"
    description: "Average time to abandon a call"
    sql: ${time_to_aband_seconds} ;;
    filters: [abandons_cnt: "1"]
    value_format_name: decimal_1
  }

  measure: min_time_to_abandon_seconds {
    type: min
    label: "Minimum time to abandon"
    description: "Minimum time to abandon a call"
    sql: ${time_to_aband_seconds} ;;
    filters: [abandons_cnt: "1"]
  }

  measure: max_time_to_abandon_seconds {
    type: max
    label: "Maximum time to abandon"
    description: "Maximum time to abandon a call"
    sql: ${time_to_aband_seconds} ;;
    filters: [abandons_cnt: "1"]
  }


  measure: average_handle_time_seconds {
    label: "Average handle time"
    description: "Average Call Handle Duration - Average handle time in seconds"
    type: average
    sql: ${handle_tm_seconds} ;;
    value_format_name: decimal_0
  }

  measure: total_answered_calls {
    label: "Total answered calls"
    description: "Total number of calls answered"
    type: sum
    sql: ${answered_cnt} ;;
  }

  measure: avg_answered_calls {
    label: "Average answered calls"
    description: "Average number of calls answered"
    type: number
    sql: ${calls_to_agent}/${total_answered_calls};;
    value_format_name: decimal_0

  }
  measure: total_handle_time_seconds {
    label: "Total handle time"
    description: "Total Call Handle Duration - Average handle time in seconds"
    type: sum
    sql: ${handle_tm_seconds} ;;
    value_format_name: decimal_0
  }

  measure: avg_call_duration_seconds {
    label: "Average call duration"
    description: "Average call duration in seconds"
    type: average
    sql: ${call_duration_seconds} ;;
    value_format_name: decimal_0

  }

  dimension: internal_or_spc_area_cd {
    type: string
    label: "Internal or SPC area code"
    description: "Area codes bucketed as internal or partner channels (SPC)"
    sql: CASE
        WHEN ${acd_area_nm} = 'SPC' THEN 'SPC'
        WHEN ${acd_area_nm} IS NULL THEN NULL
        ELSE 'Internal'
    END ;;
  }




  dimension: transfer_point {
    type: string
    description: "The point at which the call was transferred to another agent. This column is NOT to be used for counting transferred calls"
    sql: ${TABLE}.transfer_point ;;
    hidden: yes
  }



}
