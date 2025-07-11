view: vzw_cust_acct_line_prfl {
  sql_table_name: `aragosalooker.verizon_autobi..vzw_cust_acct_line_prfl` ;;

  dimension: aal_voice_base_ind {
    type: string
    sql: ${TABLE}.aal_voice_base_ind ;;
  }
  dimension: access_manager {
    type: string
    sql: ${TABLE}.access_Manager ;;
  }
  dimension: acct_num {
    type: string
    sql: ${TABLE}.acct_num ;;
  }
  dimension: acct_spend2_delta_bucket {
    type: string
    sql: ${TABLE}.acct_spend2_delta_bucket ;;
  }
  dimension: activate_channel {
    type: string
    sql: ${TABLE}.activate_Channel ;;
  }
  dimension: active_subscriptions {
    hidden: yes
    sql: ${TABLE}.active_subscriptions ;;
  }
  dimension: addr_line1 {
    type: string
    sql: ${TABLE}.addr_line1 ;;
  }
  dimension: addr_line2 {
    type: string
    sql: ${TABLE}.addr_line2 ;;
  }
  dimension: addr_line3 {
    type: string
    sql: ${TABLE}.addr_line3 ;;
  }
  dimension: address_link {
    type: string
    sql: ${TABLE}.address_link ;;
  }
  dimension: adobe_flag {
    type: string
    sql: ${TABLE}.adobe_flag ;;
  }
  dimension: age_group {
    type: string
    sql: ${TABLE}.ageGroup ;;
  }
  dimension: apple_music_fmly_inact_days {
    type: number
    sql: ${TABLE}.apple_music_fmly_inact_days ;;
  }
  dimension: apple_music_status {
    type: string
    sql: ${TABLE}.apple_music_status ;;
  }
  dimension: apple_one_fmly_inact_days {
    type: number
    sql: ${TABLE}.apple_one_fmly_inact_days ;;
  }
  dimension: apple_one_indvdl_inact_days {
    type: number
    sql: ${TABLE}.apple_one_indvdl_inact_days ;;
  }
  dimension: arpu {
    type: string
    sql: ${TABLE}.arpu ;;
  }
  dimension: auto_pay {
    type: string
    sql: ${TABLE}.autoPay ;;
  }
  dimension: brands {
    hidden: yes
    sql: ${TABLE}.brands ;;
  }
  dimension: byod_ind {
    type: string
    sql: ${TABLE}.byod_ind ;;
  }
  dimension: byod_prcng_disc_ind {
    type: string
    sql: ${TABLE}.byod_prcng_disc_ind ;;
  }
  dimension: call_drivers_categories {
    hidden: yes
    sql: ${TABLE}.callDriversCategories ;;
  }
  dimension: call_interaction_count_events {
    type: string
    sql: ${TABLE}.callInteractionCountEvents ;;
  }
  dimension: car_ctgry {
    hidden: yes
    sql: ${TABLE}.car_ctgry ;;
  }
  dimension: cc_flag {
    type: string
    sql: ${TABLE}.cc_flag ;;
  }
  dimension: ce_ind {
    type: string
    sql: ${TABLE}.ce_ind ;;
  }
  dimension: child_line_sprss_ind {
    type: string
    sql: ${TABLE}.child_line_sprss_ind ;;
  }
  dimension: churn_causal_reason_primary_nb {
    type: string
    sql: ${TABLE}.churn_causal_reason_primary_nb ;;
  }
  dimension: churn_driver_primary {
    type: string
    sql: ${TABLE}.churn_driver_primary ;;
  }
  dimension: churn_driver_primary_nb {
    type: string
    sql: ${TABLE}.churn_driver_primary_nb ;;
  }
  dimension: churndecile {
    type: number
    sql: ${TABLE}.churndecile ;;
  }
  dimension: city_nm {
    type: string
    sql: ${TABLE}.city_nm ;;
  }
  dimension: cloud_add_on {
    type: string
    sql: ${TABLE}.cloudAddOn ;;
  }
  dimension: cloud_storage_feature {
    type: string
    sql: ${TABLE}.cloudStorageFeature ;;
  }
  dimension: coe_pplan_class_desc {
    type: string
    sql: ${TABLE}.coe_pplan_class_desc ;;
  }
  dimension: coe_pplan_ctgry_desc {
    type: string
    sql: ${TABLE}.coe_pplan_ctgry_desc ;;
  }
  dimension: coe_pplan_sub_type_desc {
    type: string
    sql: ${TABLE}.coe_pplan_sub_type_desc ;;
  }
  dimension: coe_pplan_type_desc {
    type: string
    sql: ${TABLE}.coe_pplan_type_desc ;;
  }
  dimension: cons_phog_univ {
    type: string
    sql: ${TABLE}.cons_phog_univ ;;
  }
  dimension: cons_phog_univ_incl_eleu_excl {
    type: string
    sql: ${TABLE}.cons_phog_univ_incl_eleu_excl ;;
  }
  dimension: consumer_base_ind {
    type: string
    sql: ${TABLE}.consumer_base_ind ;;
  }
  dimension: consumer_ind {
    type: string
    sql: ${TABLE}.consumer_ind ;;
  }
  dimension: contact_preferences {
    hidden: yes
    sql: ${TABLE}.contactPreferences ;;
  }
  dimension: contracttype {
    type: string
    sql: ${TABLE}.contracttype ;;
  }
  dimension: cpni_ind {
    type: string
    sql: ${TABLE}.cpni_ind ;;
  }
  dimension: crm_elig {
    type: string
    sql: ${TABLE}.crm_elig ;;
  }
  dimension: curr_contract_term {
    type: string
    sql: ${TABLE}.curr_contract_term ;;
  }
  dimension: curr_contract_term_ssf {
    type: string
    sql: ${TABLE}.curr_contract_term_ssf ;;
  }
  dimension: current_plan {
    type: string
    sql: ${TABLE}.CurrentPlan ;;
  }
  dimension: cust_id {
    type: string
    label: "Customer Id"
    description: "Customer Id is a unique key that uniquely identifies a customer"
    sql: ${TABLE}.cust_id ;;
  }
  dimension: cust_line_seq_id {
    type: string
    label: "Customer Line Sequence Id"
    description: "The customer line Sequence Number identifies the line sequence associated with each customer account. it maintains the line to account through history, regardless if the MTN changes for that line."
    sql: ${TABLE}.cust_line_seq_id ;;
  }
  dimension: cust_line_seq_id_phn {
    type: string
    sql: ${TABLE}.cust_line_seq_id_phn ;;
  }
  dimension: data_tier {
    type: string
    sql: ${TABLE}.data_tier ;;
  }
  dimension: days_since_last_plan_chng {
    type: number
    sql: ${TABLE}.days_since_last_plan_chng ;;
  }
  dimension: days_since_last_plan_trans {
    type: number
    sql: ${TABLE}.days_since_last_plan_trans ;;
  }
  dimension: dev_global_gsm_capable_ind {
    type: string
    sql: ${TABLE}.dev_global_gsm_capable_ind ;;
  }
  dimension: dev_typ_1 {
    type: string
    sql: ${TABLE}.dev_typ_1 ;;
  }
  dimension: dev_typ_3 {
    type: string
    sql: ${TABLE}.dev_typ_3 ;;
  }
  dimension: device_brand_nm {
    type: string
    sql: ${TABLE}.device_brand_nm ;;
  }
  dimension: device_dollar_bal_amt {
    type: number
    sql: ${TABLE}.device_dollar_bal_amt ;;
  }
  dimension: device_grouping {
    type: string
    sql: ${TABLE}.device_grouping ;;
  }
  dimension: device_id {
    type: string
    sql: ${TABLE}.device_id ;;
  }
  dimension: device_insurance_ind {
    type: string
    sql: ${TABLE}.device_insurance_ind ;;
  }
  dimension: device_os {
    type: string
    sql: ${TABLE}.device_os ;;
  }
  dimension: device_pay_off_remaining {
    type: number
    sql: ${TABLE}.devicePayOffRemaining ;;
  }
  dimension: device_purchase_channel {
    type: string
    sql: ${TABLE}.device_Purchase_Channel ;;
  }
  dimension: device_tier {
    type: string
    sql: ${TABLE}.device_tier ;;
  }
  dimension_group: device_trans_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.device_trans_dt ;;
  }
  dimension: device_type {
    type: string
    sql: ${TABLE}.device_type ;;
  }
  dimension: devicegeneration {
    type: string
    sql: ${TABLE}.devicegeneration ;;
  }
  dimension: digital_sec_subs_paid_ind {
    type: string
    sql: ${TABLE}.digital_sec_subs_paid_ind ;;
  }
  dimension: digital_sec_subs_trail_ind {
    type: string
    sql: ${TABLE}.digital_sec_subs_trail_ind ;;
  }
  dimension: disney_inact_days {
    type: number
    sql: ${TABLE}.disney_inact_days ;;
  }
  dimension: disneyplus_status {
    type: string
    sql: ${TABLE}.disneyplus_status ;;
  }
  dimension: dm_base {
    type: string
    sql: ${TABLE}.dm_base ;;
  }
  dimension: dm_home_xsell_sprss_ind {
    type: string
    sql: ${TABLE}.dm_home_xsell_sprss_ind ;;
  }
  dimension: dm_less_dns {
    type: string
    sql: ${TABLE}.dm_less_dns ;;
  }
  dimension: dma {
    type: string
    sql: ${TABLE}.dma ;;
  }
  dimension: dna_high {
    hidden: yes
    sql: ${TABLE}.dna_High ;;
  }
  dimension: dna_low {
    hidden: yes
    sql: ${TABLE}.dna_Low ;;
  }
  dimension: dna_medium {
    hidden: yes
    sql: ${TABLE}.dna_Medium ;;
  }
  dimension: dnsst_ind {
    type: string
    sql: ${TABLE}.dnsst_ind ;;
  }
  dimension: dont_mrkt_bb_ind {
    type: string
    sql: ${TABLE}.dont_mrkt_bb_ind ;;
  }
  dimension: dp_device_minus {
    type: string
    sql: ${TABLE}.dp_device_minus ;;
  }
  dimension: dpp_elig {
    type: string
    sql: ${TABLE}.dpp_elig ;;
  }
  dimension: dpp_remaining_payments {
    type: number
    sql: ${TABLE}.dpp_remaining_payments ;;
  }
  dimension: drct_mail_sprss_ind {
    type: string
    sql: ${TABLE}.drct_mail_sprss_ind ;;
  }
  dimension: edge_dpp_flag {
    type: string
    sql: ${TABLE}.edge_dpp_flag ;;
  }
  dimension_group: edw_ln_addr_rec_lst_updt_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.edw_ln_addr_rec_lst_updt_dt ;;
  }
  dimension_group: edw_ln_device_rec_lst_updt_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.edw_ln_device_rec_lst_updt_dt ;;
  }
  dimension_group: edw_ln_pplan_rec_lst_updt_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.edw_ln_pplan_rec_lst_updt_dt ;;
  }
  dimension: elig_4gh_ind {
    type: string
    sql: ${TABLE}.elig_4gh_ind ;;
  }
  dimension: elig_cband_ind {
    type: string
    sql: ${TABLE}.elig_cband_ind ;;
  }
  dimension: elig_mmwave_ind {
    type: string
    sql: ${TABLE}.elig_mmwave_ind ;;
  }
  dimension: em_base {
    type: string
    sql: ${TABLE}.em_base ;;
  }
  dimension: em_fios_dns {
    type: string
    sql: ${TABLE}.em_fios_dns ;;
  }
  dimension: em_home_xsell_sprss_ind {
    type: string
    sql: ${TABLE}.em_home_xsell_sprss_ind ;;
  }
  dimension_group: em_last_tch_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.em_last_tch_dt ;;
  }
  dimension: em_less_dns {
    type: string
    sql: ${TABLE}.em_less_dns ;;
  }
  dimension: em_line_dom {
    type: string
    sql: ${TABLE}.em_line_dom ;;
  }
  dimension: em_line_vzdom {
    type: string
    sql: ${TABLE}.em_line_vzdom ;;
  }
  dimension: email_sprss_ind {
    type: string
    sql: ${TABLE}.email_sprss_ind ;;
  }
  dimension: employee_disc {
    type: string
    sql: ${TABLE}.employee_Disc ;;
  }
  dimension: ems {
    type: string
    sql: ${TABLE}.ems ;;
  }
  dimension: ems_base {
    type: string
    sql: ${TABLE}.ems_base ;;
  }
  dimension_group: ems_last_tch_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ems_last_tch_dt ;;
  }
  dimension: ems_less_dns {
    type: string
    sql: ${TABLE}.ems_less_dns ;;
  }
  dimension: eom_lines {
    type: string
    sql: ${TABLE}.eom_lines ;;
  }
  dimension: eqp_device_id {
    type: string
    sql: ${TABLE}.eqp_device_id ;;
  }
  dimension_group: esn_redempt_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.esn_redempt_dt ;;
  }
  dimension: excl_base {
    type: string
    sql: ${TABLE}.excl_base ;;
  }
  dimension: extended_warranty_ind {
    type: string
    sql: ${TABLE}.extended_warranty_ind ;;
  }
  dimension: family_base {
    type: string
    sql: ${TABLE}.family_Base ;;
  }
  dimension: fav_store {
    type: string
    sql: ${TABLE}.fav_store ;;
  }
  dimension: fav_store_channel {
    type: string
    sql: ${TABLE}.fav_store_channel ;;
  }
  dimension: fios_base {
    type: string
    sql: ${TABLE}.fios_base ;;
  }
  dimension: fios_prosp_base {
    type: string
    sql: ${TABLE}.fios_prosp_base ;;
  }
  dimension: fwa_ind {
    type: string
    label: "FWA Indicator"
    description: "Indicates whether the customer line is Fixed Wireless Access line. 'Y' indicates it is a FWA customer, 'N' indicates not an FWA customer"
    sql: ${TABLE}.fwa_ind ;;
  }
  dimension: fwa_jrny_score {
    type: number
    label: "FWA journey score"
    description: "Line level JDP customer's FWA journey latest score."
    sql: ${TABLE}.fwa_jrny_score ;;
  }
  dimension: fwa_nqes_avg_score {
    type: number
    label: "Averge FWA network QES"
    description: "Average of network QES for FWA over last 7 days"
    sql: ${TABLE}.fwa_nqes_avg_score ;;
  }
  dimension: fwa_steps {
    type: string
    sql: ${TABLE}.fwa_steps ;;
  }
  dimension: global_data_ind {
    type: string
    sql: ${TABLE}.global_data_ind ;;
  }
  dimension: gross_adds {
    type: number
    sql: ${TABLE}.gross_adds ;;
  }
  dimension: hasinterests {
    type: string
    sql: ${TABLE}.hasinterests ;;
  }
  dimension: hbo_max_inact_days {
    type: number
    sql: ${TABLE}.hbo_max_inact_days ;;
  }
  dimension: health_cent_lvl1 {
    type: number
    sql: ${TABLE}.health_cent_lvl1 ;;
  }
  dimension: health_cent_lvl2 {
    type: number
    sql: ${TABLE}.health_cent_lvl2 ;;
  }
  dimension: health_cent_lvl3 {
    type: number
    sql: ${TABLE}.health_cent_lvl3 ;;
  }
  dimension: holdout_ind {
    type: string
    sql: ${TABLE}.holdout_ind ;;
  }
  dimension: home_fcc_sprss_ind {
    type: string
    sql: ${TABLE}.home_fcc_sprss_ind ;;
  }
  dimension: home_flag {
    type: string
    sql: ${TABLE}.home_flag ;;
  }
  dimension: hrchy_segmt_id {
    type: number
    sql: ${TABLE}.hrchy_segmt_id ;;
  }
  dimension: hyper_targeted_churn {
    hidden: yes
    sql: ${TABLE}.hyper_targeted_churn ;;
  }
  dimension: inactive_subscriptions {
    hidden: yes
    sql: ${TABLE}.inactive_subscriptions ;;
  }
  dimension: insights_smartsegment {
    hidden: yes
    sql: ${TABLE}.insights_smartsegment ;;
  }
  dimension: interests {
    hidden: yes
    sql: ${TABLE}.interests ;;
  }
  dimension: international_travel {
    type: string
    sql: ${TABLE}.International_Travel ;;
  }
  dimension: item_cd {
    type: string
    sql: ${TABLE}.item_cd ;;
  }
  dimension: lang_pref_ind {
    type: string
    sql: ${TABLE}.lang_pref_ind ;;
  }
  dimension: language_pref {
    type: string
    sql: ${TABLE}.language_Pref ;;
  }
  dimension: last_pplan_chng_chnl {
    type: string
    sql: ${TABLE}.last_pplan_chng_chnl ;;
  }
  dimension_group: last_sales_call_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_sales_call_dt ;;
  }
  dimension_group: latest_plan_eff_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.latest_plan_eff_dt ;;
  }
  dimension: lengthofservice {
    type: number
    sql: ${TABLE}.lengthofservice ;;
  }
  dimension: lifetimevalue {
    type: number
    sql: ${TABLE}.lifetimevalue ;;
  }
  dimension_group: line_act_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.line_act_dt ;;
  }
  dimension: line_attpo_decile {
    type: number
    sql: ${TABLE}.line_attpo_decile ;;
  }
  dimension: line_customer_health_decile {
    type: number
    sql: ${TABLE}.line_customer_health_decile ;;
  }
  dimension: line_days_since_cancel {
    type: number
    sql: ${TABLE}.line_days_since_cancel ;;
  }
  dimension: line_dma_name {
    type: string
    sql: ${TABLE}.line_dma_name ;;
  }
  dimension: line_dma_tier {
    type: number
    sql: ${TABLE}.line_dma_tier ;;
  }
  dimension: line_email_addr {
    type: string
    sql: ${TABLE}.line_email_addr ;;
  }
  dimension: line_hist_ltv_cent {
    type: number
    sql: ${TABLE}.line_hist_ltv_cent ;;
  }
  dimension: line_htc_segment {
    hidden: yes
    sql: ${TABLE}.line_htc_segment ;;
  }
  dimension: line_in_mkt_score_centile {
    type: number
    sql: ${TABLE}.line_in_mkt_score_centile ;;
  }
  dimension: line_in_mkt_wk_cent {
    type: number
    sql: ${TABLE}.line_in_mkt_wk_cent ;;
  }
  dimension: line_in_mkt_wk_decile {
    type: number
    sql: ${TABLE}.line_in_mkt_wk_decile ;;
  }
  dimension: line_long_churn_cent {
    type: number
    sql: ${TABLE}.line_long_churn_cent ;;
  }
  dimension: line_long_churn_decile {
    type: number
    sql: ${TABLE}.line_long_churn_decile ;;
  }
  dimension: line_lra_zip_flag {
    type: string
    sql: ${TABLE}.line_lra_zip_flag ;;
  }
  dimension: line_perks {
    hidden: yes
    sql: ${TABLE}.line_perks ;;
  }
  dimension: line_plan_recmd_1 {
    type: string
    sql: ${TABLE}.line_plan_recmd_1 ;;
  }
  dimension: line_plan_type {
    type: string
    sql: ${TABLE}.line_plan_type ;;
  }
  dimension: line_plan_type1 {
    type: string
    sql: ${TABLE}.line_plan_type1 ;;
  }
  dimension: line_plan_unl {
    type: string
    sql: ${TABLE}.line_plan_unl ;;
  }
  dimension: line_plan_unl_prem {
    type: string
    sql: ${TABLE}.line_plan_unl_prem ;;
  }
  dimension: line_po_score_centile {
    type: number
    sql: ${TABLE}.line_po_score_centile ;;
  }
  dimension: line_po_wly_score_centile {
    type: number
    sql: ${TABLE}.line_po_wly_score_centile ;;
  }
  dimension: line_recmd_reas_1 {
    type: string
    sql: ${TABLE}.line_recmd_reas_1 ;;
  }
  dimension: line_service_product {
    hidden: yes
    sql: ${TABLE}.line_service_product ;;
  }
  dimension: line_service_sfo {
    hidden: yes
    sql: ${TABLE}.line_service_sfo ;;
  }
  dimension: line_spend1_delta_bucket {
    type: number
    sql: ${TABLE}.line_spend1_delta_bucket ;;
  }
  dimension_group: line_spo_cancel_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.line_spo_cancel_dt ;;
  }
  dimension_group: line_term_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.line_term_dt ;;
  }
  dimension: line_tmobil_decile {
    type: number
    sql: ${TABLE}.line_tmobil_decile ;;
  }
  dimension: line_tsip_intent_cent {
    type: number
    sql: ${TABLE}.line_tsip_intent_cent ;;
  }
  dimension: line_type_cd {
    type: string
    sql: ${TABLE}.line_type_cd ;;
  }
  dimension: line_usg {
    type: string
    sql: ${TABLE}.line_usg ;;
  }
  dimension: line_value_decile {
    type: number
    sql: ${TABLE}.line_value_decile ;;
  }
  dimension: ll_vcg_mkt_cd {
    type: string
    sql: ${TABLE}.ll_vcg_mkt_cd ;;
  }
  dimension: loan_device_os {
    type: string
    sql: ${TABLE}.loanDeviceOS ;;
  }
  dimension: loan_device_type {
    type: string
    sql: ${TABLE}.loanDeviceType ;;
  }
  dimension: locus_id {
    type: string
    sql: ${TABLE}.locus_id ;;
  }
  dimension: long_churn_cent_lvl4 {
    type: number
    sql: ${TABLE}.long_churn_cent_lvl4 ;;
  }
  dimension: long_churn_cent_lvl5 {
    type: number
    sql: ${TABLE}.long_churn_cent_lvl5 ;;
  }
  dimension: long_churn_cent_lvl6 {
    type: number
    sql: ${TABLE}.long_churn_cent_lvl6 ;;
  }
  dimension_group: loop_qual_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.loop_qual_dt ;;
  }
  dimension: loyality_disc_ind {
    type: string
    sql: ${TABLE}.loyality_disc_ind ;;
  }
  dimension: loyalty_pricing_base_ind {
    type: string
    sql: ${TABLE}.loyalty_pricing_base_ind ;;
  }
  dimension: lqa_offered_for {
    type: string
    sql: ${TABLE}.lqa_offered_for ;;
  }
  dimension: managed_ind {
    type: string
    sql: ${TABLE}.managed_ind ;;
  }
  dimension: mapped_store_type_cd {
    type: string
    sql: ${TABLE}.mapped_store_type_cd ;;
  }
  dimension: marketing_channel {
    hidden: yes
    sql: ${TABLE}.marketingChannel ;;
  }
  dimension: message_category_cd {
    hidden: yes
    sql: ${TABLE}.message_category_cd ;;
  }
  dimension: message_cd {
    hidden: yes
    sql: ${TABLE}.message_cd ;;
  }
  dimension: message_desc {
    hidden: yes
    sql: ${TABLE}.message_desc ;;
  }
  dimension: mfg_nm {
    type: string
    sql: ${TABLE}.mfg_nm ;;
  }
  dimension: mgd_segmt {
    type: string
    sql: ${TABLE}.mgd_segmt ;;
  }
  dimension: military_disc {
    type: string
    sql: ${TABLE}.military_Disc ;;
  }
  dimension: mkt_name {
    type: string
    sql: ${TABLE}.mkt_name ;;
  }
  dimension: mktng_em_dom {
    type: string
    sql: ${TABLE}.mktng_em_dom ;;
  }
  dimension: mktng_em_vzdom {
    type: string
    sql: ${TABLE}.mktng_em_vzdom ;;
  }
  dimension: mktng_email_addr {
    type: string
    sql: ${TABLE}.mktng_email_addr ;;
  }
  dimension: mktng_email_entertainment_optout {
    type: string
    sql: ${TABLE}.mktng_email_entertainment_optout ;;
  }
  dimension: mktng_email_equip_optout {
    type: string
    sql: ${TABLE}.mktng_email_equip_optout ;;
  }
  dimension_group: mktng_email_pause_resume_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.mktng_email_pause_resume_dt ;;
  }
  dimension: mktng_email_plan_prcng_optout {
    type: string
    sql: ${TABLE}.mktng_email_plan_prcng_optout ;;
  }
  dimension: mktng_email_prod_svc_optout {
    type: string
    sql: ${TABLE}.mktng_email_prod_svc_optout ;;
  }
  dimension: mktng_email_vcc_optout {
    type: string
    sql: ${TABLE}.mktng_email_vcc_optout ;;
  }
  dimension: mktng_email_vzup_engage_optout {
    type: string
    sql: ${TABLE}.mktng_email_vzup_engage_optout ;;
  }
  dimension: mktng_sms_entertainment_optout {
    type: string
    sql: ${TABLE}.mktng_sms_entertainment_optout ;;
  }
  dimension: mktng_sms_equip_optout {
    type: string
    sql: ${TABLE}.mktng_sms_equip_optout ;;
  }
  dimension: mktng_sms_plan_prcng_optout {
    type: string
    sql: ${TABLE}.mktng_sms_plan_prcng_optout ;;
  }
  dimension: mktng_sms_prod_svc_optout {
    type: string
    sql: ${TABLE}.mktng_sms_prod_svc_optout ;;
  }
  dimension: mms {
    type: string
    sql: ${TABLE}.mms ;;
  }
  dimension: mms_base {
    type: string
    sql: ${TABLE}.mms_base ;;
  }
  dimension: monthly_data_allowance {
    type: number
    sql: ${TABLE}.monthlyDataAllowance ;;
  }
  dimension: monthly_data_allowance_exceeded {
    type: string
    sql: ${TABLE}.monthlyDataAllowanceExceeded ;;
  }
  dimension: months_since_4_gdisconnect {
    type: number
    sql: ${TABLE}.months_Since_4GDisconnect ;;
  }
  dimension: months_since_5_gdisconnect {
    type: number
    sql: ${TABLE}.months_Since_5GDisconnect ;;
  }
  dimension: months_to_contract_end {
    type: number
    sql: ${TABLE}.monthsToContractEnd ;;
  }
  dimension: mrkt_bb_ok_ind {
    type: string
    sql: ${TABLE}.mrkt_bb_ok_ind ;;
  }
  dimension: mtn {
    type: string
    label: "Mobile Telephone Number"
    description: "The Mobile Telephone Number consists of three components: a Numbering Plan Area (NPA) also known as area code, telephone exchange (NXX) and the four digits, known as the LINE. This is the ten-digit number assigned to a cellular line of service."
    sql: ${TABLE}.mtn ;;
  }
  dimension_group: mtn_act_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.mtn_act_dt ;;
  }
  dimension: mtn_as_cntct_ind {
    type: string
    sql: ${TABLE}.mtn_as_cntct_ind ;;
  }
  dimension: mtn_role {
    type: string
    sql: ${TABLE}.mtn_role ;;
  }
  dimension: mtn_status_ind {
    type: string
    sql: ${TABLE}.mtn_status_ind ;;
  }
  dimension: multi_device_insurance_ind {
    type: string
    sql: ${TABLE}.multi_device_insurance_ind ;;
  }
  dimension: mva_app_installed_ind {
    type: string
    sql: ${TABLE}.mva_app_installed_ind ;;
  }
  dimension_group: mva_app_last_login_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.mva_app_last_login_ts ;;
  }
  dimension: mva_biometric_enabled_ind {
    type: string
    sql: ${TABLE}.mva_biometric_enabled_ind ;;
  }
  dimension: myvz_ver {
    type: string
    sql: ${TABLE}.myvz_ver ;;
  }
  dimension: natural_audiences {
    hidden: yes
    sql: ${TABLE}.naturalAudiences ;;
  }
  dimension: needs_based_segments {
    type: string
    sql: ${TABLE}.needs_based_segments ;;
  }
  dimension: netflix_inact_days {
    type: number
    sql: ${TABLE}.netflix_inact_days ;;
  }
  dimension: new_cust_onboard_accessory_info {
    hidden: yes
    sql: ${TABLE}.new_cust_onboard_accessory_info ;;
  }
  dimension: new_cust_onboard_decline_protection_ind {
    type: string
    sql: ${TABLE}.new_cust_onboard_decline_protection_ind ;;
  }
  dimension_group: new_cust_ord_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.new_cust_ord_dt ;;
  }
  dimension: nm_first {
    type: string
    sql: ${TABLE}.nm_first ;;
  }
  dimension: nm_last {
    type: string
    sql: ${TABLE}.nm_last ;;
  }
  dimension: no_carts_abandoned {
    type: string
    sql: ${TABLE}.noCartsAbandoned ;;
  }
  dimension: nonbrand_dns {
    type: string
    sql: ${TABLE}.nonbrand_dns ;;
  }
  dimension: nqes_avg_score {
    type: number
    label: "Line level nQES 3.0 score averaged over last 7 days."
    description: "Average of Line level networl quality experience score 3.0 over last 7 days. If nqes_avg_score is between 0 to 5 then its a Low NQES, between 6 to 8 is considered Medium NQES, between 8 to 10 is High NQES "
    sql: ${TABLE}.nqes_avg_score ;;
  }
  dimension: ob_base {
    type: string
    sql: ${TABLE}.ob_base ;;
  }
  dimension: ob_campaign_eligibility {
    hidden: yes
    sql: ${TABLE}.ob_campaign_eligibility ;;
  }
  dimension: ob_elig {
    type: string
    sql: ${TABLE}.ob_elig ;;
  }
  dimension_group: ob_last_tch_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ob_last_tch_dt ;;
  }
  dimension: ob_less_dns {
    type: string
    sql: ${TABLE}.ob_less_dns ;;
  }
  dimension: outbound_offers_clicks {
    hidden: yes
    sql: ${TABLE}.outbound_Offers_Clicks ;;
  }
  dimension: outbound_offers_not_oc {
    hidden: yes
    sql: ${TABLE}.outbound_Offers_Not_OC ;;
  }
  dimension: outbound_offers_num_clicks {
    type: number
    sql: ${TABLE}.outbound_Offers_Num_Clicks ;;
  }
  dimension: outbound_offers_num_not_oc {
    type: number
    sql: ${TABLE}.outbound_Offers_Num_Not_OC ;;
  }
  dimension: outbound_offers_num_opens {
    type: number
    sql: ${TABLE}.outbound_Offers_Num_Opens ;;
  }
  dimension: outbound_offers_num_recvd {
    type: number
    sql: ${TABLE}.outbound_Offers_Num_Recvd ;;
  }
  dimension: outbound_offers_opens {
    hidden: yes
    sql: ${TABLE}.outbound_Offers_Opens ;;
  }
  dimension: outbound_offers_perc_clicks {
    type: number
    sql: ${TABLE}.outbound_Offers_Perc_Clicks ;;
  }
  dimension: outbound_offers_perc_not_oc {
    type: number
    sql: ${TABLE}.outbound_Offers_Perc_Not_OC ;;
  }
  dimension: outbound_offers_perc_opens {
    type: number
    sql: ${TABLE}.outbound_Offers_Perc_Opens ;;
  }
  dimension: outbound_offers_recvd {
    hidden: yes
    sql: ${TABLE}.outbound_Offers_Recvd ;;
  }
  dimension: paired_dev {
    type: string
    sql: ${TABLE}.paired_dev ;;
  }
  dimension: pending_pplan_cd {
    type: string
    sql: ${TABLE}.pending_pplan_cd ;;
  }
  dimension: pending_pplan_desc {
    type: string
    sql: ${TABLE}.pending_pplan_desc ;;
  }
  dimension_group: pending_pplan_eff_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.pending_pplan_eff_dt ;;
  }
  dimension: pending_pplan_mkt_cd {
    type: string
    sql: ${TABLE}.pending_pplan_mkt_cd ;;
  }
  dimension: pilot_grp {
    type: string
    sql: ${TABLE}.pilot_grp ;;
  }
  dimension: port_in_carrier_desc {
    type: string
    sql: ${TABLE}.port_in_carrier_desc ;;
  }
  dimension: port_out_carrier_desc {
    type: string
    sql: ${TABLE}.port_out_carrier_desc ;;
  }
  dimension: pplan_cd {
    type: string
    sql: ${TABLE}.pplan_cd ;;
  }
  dimension: pplan_changed_last30_days {
    type: string
    sql: ${TABLE}.pplan_Changed_Last30Days ;;
  }
  dimension: pplan_chng_last_30days_flag {
    type: string
    sql: ${TABLE}.pplan_chng_last_30days_flag ;;
  }
  dimension: pplan_desc {
    type: string
    sql: ${TABLE}.pplan_desc ;;
  }
  dimension_group: pplan_eff_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.pplan_eff_dt ;;
  }
  dimension: pplan_mkt_cd {
    type: string
    sql: ${TABLE}.pplan_mkt_cd ;;
  }
  dimension: pplan_pend_ind {
    type: string
    sql: ${TABLE}.pplan_pend_ind ;;
  }
  dimension: pplan_sub_type_desc {
    type: string
    sql: ${TABLE}.PPLAN_SUB_TYPE_DESC ;;
  }
  dimension: prefrd_family_nm {
    type: string
    sql: ${TABLE}.prefrd_family_nm ;;
  }
  dimension: prefrd_given_nm {
    type: string
    sql: ${TABLE}.prefrd_given_nm ;;
  }
  dimension: prepaid_ind {
    type: string
    sql: ${TABLE}.prepaid_ind ;;
  }
  dimension: prev_plan {
    type: string
    sql: ${TABLE}.prev_plan ;;
  }
  dimension: price_senstive_line_centile {
    type: number
    sql: ${TABLE}.price_senstive_line_centile ;;
  }
  dimension: price_senstive_line_churn_decile {
    type: number
    sql: ${TABLE}.price_senstive_line_churn_decile ;;
  }
  dimension: pricing_discounts {
    hidden: yes
    sql: ${TABLE}.pricing_discounts ;;
  }
  dimension: primary_line_ind {
    type: string
    sql: ${TABLE}.primary_line_ind ;;
  }
  dimension: primary_perk_recommendation {
    type: string
    sql: ${TABLE}.primary_perk_recommendation ;;
  }
  dimension: primary_plan_recommendation {
    type: string
    sql: ${TABLE}.primary_plan_recommendation ;;
  }
  dimension_group: process_run_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.process_run_dt ;;
  }
  dimension_group: process_run_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.process_run_ts ;;
  }
  dimension: prod_mfg_cd {
    type: string
    sql: ${TABLE}.prod_mfg_cd ;;
  }
  dimension: prod_nm {
    type: string
    sql: ${TABLE}.prod_nm ;;
  }
  dimension: push_base {
    type: string
    sql: ${TABLE}.push_base ;;
  }
  dimension: push_enabled {
    type: string
    sql: ${TABLE}.push_enabled ;;
  }
  dimension_group: push_last_tch_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.push_last_tch_dt ;;
  }
  dimension: push_less_dns {
    type: string
    sql: ${TABLE}.push_less_dns ;;
  }
  dimension: push_on_both_lob {
    type: string
    sql: ${TABLE}.push_on_both_lob ;;
  }
  dimension: push_on_sim_device {
    type: string
    sql: ${TABLE}.push_on_sim_device ;;
  }
  dimension: push_optdown_entertainment {
    type: string
    sql: ${TABLE}.push_optdown_entertainment ;;
  }
  dimension: push_optdown_equipment {
    type: string
    sql: ${TABLE}.push_optdown_equipment ;;
  }
  dimension: push_optdown_pricing_plans {
    type: string
    sql: ${TABLE}.push_optdown_pricing_plans ;;
  }
  dimension: push_optdown_products_services {
    type: string
    sql: ${TABLE}.push_optdown_products_services ;;
  }
  dimension: push_v2_enabled {
    type: string
    sql: ${TABLE}.push_v2_enabled ;;
  }
  dimension: push_v2_myvz_ver {
    type: string
    sql: ${TABLE}.push_v2_myvz_ver ;;
  }
  dimension: push_v2_user_id {
    type: string
    sql: ${TABLE}.push_v2_user_id ;;
  }
  dimension: qesappscore {
    type: number
    label: "Monthly QES App score."
    description: "Monthly QES (Quality experience score) App score."
    sql: ${TABLE}.qesappscore ;;
  }
  dimension: qescallcenterscore {
    type: number
    label: "Monthly QES Call Center score."
    description: "Monthly QES Call Center score."
    sql: ${TABLE}.qescallcenterscore ;;
  }
  dimension: qeschatbotscore {
    type: number
    label: "Monthly QES Chatbot score."
    description: "Monthly score calculated for QES chatbot."
    sql: ${TABLE}.qeschatbotscore ;;
  }
  dimension: qeschatscore {
    type: number
    label: "Monthly QES Chat score."
    description: "Monthly QES Chat score."
    sql: ${TABLE}.qeschatscore ;;
  }
  dimension: qesfinalscore {
    type: number
    label: "Monthly QES score."
    description: "Monthly QES final score."
    sql: ${TABLE}.qesfinalscore ;;
  }
  dimension: qesivrscore {
    type: number
    label: "Monthly QES Ivr score."
    description: "Monthly QES score for IVR."
    sql: ${TABLE}.qesivrscore ;;
  }
  dimension: qesnetworkscore {
    type: number
    label: "Monthly QES Network score."
    description: "Monthly QES score for Network performance."
    sql: ${TABLE}.qesnetworkscore ;;
  }
  dimension: qesretailscore {
    type: number
    label: "Monthly QES Retail score."
    description: "Monthly QES  score for retail."
    sql: ${TABLE}.qesretailscore ;;
  }
  dimension: qesservicescore {
    type: number
    label: "Monthly QES Service score."
    description: "Monthly QES Service score."
    sql: ${TABLE}.qesservicescore ;;
  }
  dimension: qeswebscore {
    type: number
    label: "Monthly QES Web score."
    description: "Monthly QES Web score."
    sql: ${TABLE}.qeswebscore ;;
  }
  dimension: react_phog_univ {
    type: string
    sql: ${TABLE}.react_phog_univ ;;
  }
  dimension: rev_gen_ind {
    type: string
    sql: ${TABLE}.rev_gen_ind ;;
  }
  dimension: rewards_enrolled {
    type: string
    sql: ${TABLE}.rewards_Enrolled ;;
  }
  dimension: rialto_data_tier {
    type: string
    sql: ${TABLE}.rialto_data_tier ;;
  }
  dimension: rialto_device_brand_nm {
    type: string
    sql: ${TABLE}.rialto_device_brand_nm ;;
  }
  dimension: rialto_mfg_nm {
    type: string
    sql: ${TABLE}.rialto_mfg_nm ;;
  }
  dimension: rialto_prod_nm {
    type: string
    sql: ${TABLE}.rialto_prod_nm ;;
  }
  dimension_group: rpt_mth {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.rpt_mth ;;
  }
  dimension: sales_call_num_cnt {
    type: number
    sql: ${TABLE}.sales_call_num_cnt ;;
  }
  dimension: scrty_dep_amt {
    type: number
    sql: ${TABLE}.scrty_dep_amt ;;
  }
  dimension: second_sim_ind {
    type: string
    sql: ${TABLE}.second_sim_ind ;;
  }
  dimension: secondary_perk_recommendation {
    type: string
    sql: ${TABLE}.secondary_perk_recommendation ;;
  }
  dimension: selects_ind {
    type: string
    sql: ${TABLE}.selects_ind ;;
  }
  dimension: service_state {
    type: string
    sql: ${TABLE}.service_State ;;
  }
  dimension: sfo_dtl_rt {
    type: string
    sql: ${TABLE}.sfo_dtl_rt ;;
  }
  dimension: sms_base {
    type: string
    sql: ${TABLE}.sms_base ;;
  }
  dimension: sms_sprss_ind {
    type: string
    sql: ${TABLE}.sms_sprss_ind ;;
  }
  dimension: sor_id {
    type: string
    sql: ${TABLE}.sor_id ;;
  }
  dimension: spo_dtl_rt {
    type: string
    sql: ${TABLE}.spo_dtl_rt ;;
  }
  dimension: state_cd {
    type: string
    sql: ${TABLE}.state_cd ;;
  }
  dimension: stndrd_bus_univ {
    type: string
    sql: ${TABLE}.stndrd_bus_univ ;;
  }
  dimension: subscription_purchase_name {
    hidden: yes
    sql: ${TABLE}.subscription_purchase_name ;;
  }
  dimension: subscription_service {
    hidden: yes
    sql: ${TABLE}.subscription_service ;;
  }
  dimension: supplied_gender {
    type: string
    sql: ${TABLE}.supplied_Gender ;;
  }
  dimension: suppress_npa_ind {
    type: string
    sql: ${TABLE}.suppress_npa_ind ;;
  }
  dimension: survey_channel {
    hidden: yes
    sql: ${TABLE}.survey_Channel ;;
  }
  dimension: survey_dns {
    type: string
    sql: ${TABLE}.survey_dns ;;
  }
  dimension: survey_scores {
    type: number
    sql: ${TABLE}.survey_Scores ;;
  }
  dimension: survey_sprss_ind {
    type: string
    sql: ${TABLE}.survey_sprss_ind ;;
  }
  dimension: tech_guru_ind {
    type: string
    sql: ${TABLE}.tech_guru_ind ;;
  }
  dimension: tel_mkt_sprss_ind {
    type: string
    sql: ${TABLE}.tel_mkt_sprss_ind ;;
  }
  dimension: total_equip_covrg_ind {
    type: string
    sql: ${TABLE}.total_equip_covrg_ind ;;
  }
  dimension: trade_promo_grp {
    type: string
    sql: ${TABLE}.trade_promo_grp ;;
  }
  dimension_group: trans_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.trans_dt ;;
  }
  dimension: travel_pass {
    type: string
    sql: ${TABLE}.travel_Pass ;;
  }
  dimension: trnpk_sprss_ind {
    type: string
    sql: ${TABLE}.trnpk_sprss_ind ;;
  }
  dimension: tx_elig {
    type: string
    sql: ${TABLE}.tx_elig ;;
  }
  dimension: universe_ind {
    type: string
    sql: ${TABLE}.universe_ind ;;
  }
  dimension: unlimited_plan {
    type: string
    sql: ${TABLE}.unlimitedPlan ;;
  }
  dimension: upg_elig {
    type: string
    sql: ${TABLE}.upg_elig ;;
  }
  dimension: upg_elig_ooc_t3_base_ind {
    type: string
    sql: ${TABLE}.upg_elig_ooc_t3_base_ind ;;
  }
  dimension: upgrade_cohort {
    type: string
    sql: ${TABLE}.upgrade_cohort ;;
  }
  dimension: upgrade_uplift_cent {
    type: number
    sql: ${TABLE}.upgrade_uplift_cent ;;
  }
  dimension: vbm_aster_churn_decile {
    type: string
    sql: ${TABLE}.vbm_Aster_Churn_Decile ;;
  }
  dimension: vcg_mkt_desc {
    type: string
    sql: ${TABLE}.vcg_mkt_desc ;;
  }
  dimension: verizon_app_flag {
    type: string
    sql: ${TABLE}.verizonAppFlag ;;
  }
  dimension: verizon_protect_acct_other {
    type: string
    sql: ${TABLE}.verizon_Protect_Acct_Other ;;
  }
  dimension: verizon_protect_flaccount {
    type: string
    sql: ${TABLE}.verizon_Protect_FLAccount ;;
  }
  dimension: verizon_protect_line {
    type: string
    sql: ${TABLE}.verizon_Protect_Line ;;
  }
  dimension: verizon_protect_nya_ccount {
    type: string
    sql: ${TABLE}.verizon_Protect_NYA_ccount ;;
  }
  dimension: verizon_selects {
    type: string
    sql: ${TABLE}.verizonSelects ;;
  }
  dimension: visual_vce_mail_ind {
    type: string
    sql: ${TABLE}.visual_vce_mail_ind ;;
  }
  dimension: vsn_cust_type_cd {
    type: string
    sql: ${TABLE}.vsn_cust_type_cd ;;
  }
  dimension: vup_base_ind {
    type: string
    sql: ${TABLE}.vup_base_ind ;;
  }
  dimension: vz2_segmt_ctgry_desc {
    type: string
    sql: ${TABLE}.vz2_segmt_ctgry_desc ;;
  }
  dimension: vz_mkt_cd {
    type: string
    sql: ${TABLE}.vz_mkt_cd ;;
  }
  dimension: vz_rwd_bal_amt {
    type: number
    sql: ${TABLE}.vz_rwd_bal_amt ;;
  }
  dimension: vzcom_cmpgn_id {
    hidden: yes
    sql: ${TABLE}.vzcom_cmpgn_id ;;
  }
  dimension: vzcom_product_urls {
    hidden: yes
    sql: ${TABLE}.vzcom_product_urls ;;
  }
  dimension: vzcom_search_keyword {
    hidden: yes
    sql: ${TABLE}.vzcom_search_keyword ;;
  }
  dimension: vzcom_session_isp {
    hidden: yes
    sql: ${TABLE}.vzcom_session_isp ;;
  }
  dimension: vzup_enroll_stat_cd {
    type: string
    sql: ${TABLE}.vzup_enroll_stat_cd ;;
  }
  dimension: vzup_score_decile {
    type: number
    sql: ${TABLE}.vzup_score_decile ;;
  }
  dimension: walmart_plus_inact_days {
    type: number
    sql: ${TABLE}.walmart_plus_inact_days ;;
  }
  dimension: warranty_services {
    type: string
    sql: ${TABLE}.warranty_Services ;;
  }
  dimension: wless_protect_plan_ind {
    type: string
    sql: ${TABLE}.wless_protect_plan_ind ;;
  }
  dimension: xs_audience {
    type: string
    sql: ${TABLE}.xs_audience ;;
  }
  dimension: youtube_prem_inact_days {
    type: number
    sql: ${TABLE}.youtube_prem_inact_days ;;
  }
  dimension: zip4_cd {
    type: string
    sql: ${TABLE}.zip4_cd ;;
  }
  dimension: zip5_cd {
    type: string
    sql: ${TABLE}.zip5_cd ;;
  }
  measure: count {
    type: count
    drill_fields: [mkt_name, line_dma_name, subscription_purchase_name]
  }

}
