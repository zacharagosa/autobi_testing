include: "/view/base_view/fact/sentiment_report_call_level_detail_convo_iq.view.lkml"
view: ext_sentiment_report_call_level_detail {
  extends: [sentiment_report_call_level_detail_convo_iq]
  extension: required



dimension: confidence_score_l3 {
  type: number
  sql: SAFE_CAST(${confidence_score_l4} as NUMERIC);;
}


dimension: confidence_score_l4 {
  type: number
  sql: SAFE_CAST(${confidence_score_l4} as NUMERIC);;

}

dimension: confidence_score_pi_sentiment { ## remove duplicate
  type: number
  sql: SAFE_CAST(${confidence_score_pi_sentiment} as NUMERIC);;
}
}
