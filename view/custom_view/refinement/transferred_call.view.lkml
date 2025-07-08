include: "/view/base_view/fact/icm_summary_fact.view.lkml"

view:transferred_call { # Give your new derived table a unique name

  derived_table: {
    sql:
      SELECT
          ivr_call_id,
          COUNT(DISTINCT acss_call_id) AS calls_to_agent_count
      FROM
          vz-it-np-j1kv-dev-earef-0.convoiq.icm_summary_fact AS icm_fact
      WHERE
          icm_fact.ivr_call_id IS NOT NULL
          AND icm_fact.acss_call_id IS NOT NULL
      GROUP BY
          ivr_call_id
      ;;
  }

  dimension: ivr_call_id {
    primary_key: yes
    type: string # Assuming ivr_call_id is a string, adjust if it's a number
    sql: ${TABLE}.ivr_call_id ;;
  }

  dimension: calls_to_agent_count_bucket {
    type: number
    sql: ${TABLE}.calls_to_agent_count ;;
    label: "Call Transferred Count"
    description: "Number of times call is transferred."
  }



#  dimension:transferred_calls_tier {
#    type: tier
 #   sql:  ${calls_to_agent_count} ;;
#    tiers: [1, 2, 3 , 4]
 #   style: integer
#    group_label: "Call Transfer Buckets"
 #   description: "Categorizes transferred calls into specific tiers."
#  }

  dimension:transferred_calls_tiers {
    type: string
    sql: case when ${calls_to_agent_count_bucket} =1 then 'No Transfer'
              when ${calls_to_agent_count_bucket} =2 then 'Single Transfer'
              when ${calls_to_agent_count_bucket} =3 then 'Two Transfers'
              when ${calls_to_agent_count_bucket} >3 then 'Multiple Transfers'
          end;;
    group_label: "Calls Transfer/No Transfer Tiers "
    description: "Categorizes calls into specific transfer buckets or tiers."
  }


  dimension: is_transferred{
    type: yesno
    label: "Transferred call Indicator"
    description: "Indicates whether a call is transferred or not"
    sql: case when ${calls_to_agent_count_bucket} > 1 then TRUE else FALSE end;;
  }

  measure: transferredcallcount {
    type: sum
    label: "Transferred Call Count"
    description: "Provide sum of total number of transferred call"
    sql: ${calls_to_agent_count_bucket} ;;
  }
}
