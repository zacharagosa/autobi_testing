view: ivr_call {
  sql_table_name: `aragosalooker.verizon_autobi.convoiq.ivr_call` ;;

  dimension: ad_cd {
    label: " AD Code"
    type: string
    description: "Analogue to Digital (conversion) code."
    sql: ${TABLE}.ad_cd ;;
  }
  dimension: ani_instance_ind {
    label: "ANI Indicator"
    type: string
    description: "Automatic Number Identification (ANI) instance indicator."
    sql: ${TABLE}.ani_instance_ind ;;
  }
  dimension: ani_num {
    label: "ANI Number"
    type: string
    description: "Automatic Number Identification (ANI) is the customer phone number."
    sql: ${TABLE}.ani_num ;;
  }
  dimension: bill_method_cd {
    label: "Billing Method Code"
    type: string
    description: "The billing method used for the call."
    sql: ${TABLE}.bill_method_cd ;;
  }
  dimension: bsc { ## what about this field, is it a yes/no
    label: "BSC"
    type: string
    description: "Business Support Center (BSC) provides support to Corporate Business Account customers."
    sql: ${TABLE}.bsc ;;
  }
  dimension: cacs_state_cd {
    label: "CACs State Code"
    type: string
    description: "Computer Assisted Collection System (CACS) state code."
    sql: ${TABLE}.cacs_state_cd ;;
  }
  dimension: call_path {
    label: "Call Path"
    type: string
    description: "Microwave Path Length \u0026 Azimuth (GTEDS)."
    sql: ${TABLE}.call_path ;;
  }
  dimension: cbr_number {
    label: "CBR Number"
    type: string
    description: "Can Be Reached (CBR) number is the contact phone number listed on a customer's account."
    sql: ${TABLE}.cbr_number ;;
  }
  dimension: cmr_flag {
    label: "CMR Flag"
    type: string
    description: "Customer Marketing Representative (Directory) flag."
    sql: ${TABLE}.cmr_flag ;;
  }
  dimension: coast_ind {
    label: "Coast Indicator"
    type: string
    description: "Coast indicator."
    sql: ${TABLE}.coast_ind ;;
  }
  dimension: cps_id {
    label: " CPS Id"
    type: string
    description: "The unique identifier of the Cells per Second (CPS) associated with the IVR call."
    sql: ${TABLE}.cps_id ;;
  }
  dimension: cust_id {
    label: "Customer ID"
    type: string
    description: "Customer Identification (ID) is a unique identifier for a customer."
    sql: ${TABLE}.cust_id ;;
  }
  dimension: cust_line_seq_id {
    label: "Customer Line Sequence ID"
    type: string
    description: "This column contains the sequence ID for the customer's line."
    sql: ${TABLE}.cust_line_seq_id ;;
  }
  dimension: dev_type_new {
    label: "Device Type New"
    type: string
    description: "The type of device used to make the current call."
    sql: ${TABLE}.dev_type_new ;;
  }
  dimension: dev_type_prev {
    label: "Device Type Previous"
    type: string
    description: "The type of device used to make the previous call."
    sql: ${TABLE}.dev_type_prev ;;
  }
  dimension: device_id {
    label: "Device ID"
    type: string
    description: "The unique identifier for the device used to make the call."
    sql: ${TABLE}.device_id ;;
  }
  dimension: dnis_cd {
    label: "DNIS Code"
    type: string
    description: "Dialled Number Identification System (DNIS) code."
    sql: ${TABLE}.dnis_cd ;;
  }
  dimension: emp_id {
    label: "Employee ID"
    type: string
    description: "Unique identifier for the employee associated with the IVR call."
    sql: ${TABLE}.emp_id ;;
  }
  dimension: err_msg {
    label: "Error Message"
    type: string
    description: "The error message if any."
    sql: ${TABLE}.err_msg ;;
  }
  dimension: esc_loc_cd {
    label: "ESC Lodation Code"
    type: string
    description: "The Electronic Signature Capture (ESC) location code."
    sql: ${TABLE}.esc_loc_cd ;;
  }
  dimension: esn_num {
    label: "ESN Number"
    type: string
    description: "The Electronic Serial Number (ESN) of the handset used to make the call."
    sql: ${TABLE}.esn_num ;;
  }
  dimension: esn_num_prev {
    label: "ESN Number Previous"
    type: string
    description: "The ESN of the handset used to make the previous call."
    sql: ${TABLE}.esn_num_prev ;;
  }
  dimension: final_cacs_value {
    label: "Final CACS Value"
    type: string
    description: "Final value of the call as determined by the Computer Assisted Collection System (CACS)."
    sql: ${TABLE}.final_cacs_value ;;
  }
  dimension: first_bill_ind {
    label: "First Bill Indicator"
    type: string
    description: "Indicates whether the subscriber is receiving their first bill."
    sql: ${TABLE}.first_bill_ind ;;
  }
  dimension: imei_new {
    label: "IMEI New"
    type: string
    description: "The International Mobile Equipment Identity (IMEI) of the handset used to make the current call."
    sql: ${TABLE}.imei_new ;;
  }
  dimension: imei_orig {
    label: "IMEI Original"
    type: string
    description: "International Mobile Equipment Identity (IMEI) is a unique identifier for a mobile phone."
    sql: ${TABLE}.imei_orig ;;
  }
  dimension: inbound_call_type {
    label: "Inbound Call Type"
    type: string
    description: "Inbound Call Type classifies the IVR call based on its purpose (e.g., support inquiry, account management)."
    sql: ${TABLE}.inbound_call_type ;;
  }
  dimension: init_type_cd {
    label: "Initialization Type Code"
    type: string
    description: "The type of initialization used for the call."
    sql: ${TABLE}.init_type_cd ;;
  }
  dimension: ivr_acct_value_ind {
    label: "IVR Account Value Indicator"
    type: string
    description: "This column indicates whether the customer's account has an IVR value."
    sql: ${TABLE}.ivr_acct_value_ind ;;
  }
  dimension_group: ivr_call_dt {
    label: "IVR Call"
    type: time
    description: "The date and time of the IVR call."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ivr_call_dt ;;
  }

  ### how is this different than the timestamp above?### In the above you can add time
  dimension: ivr_call_tm {
    label: "IVR Call Timestamp"
    type: string ## this should not be a string
    description: "This column contains the timestamp of the IVR call."
    sql: ${TABLE}.ivr_call_tm ;;
  }


  dimension: ivr_call_id {
    label: "IVR Call ID"
    type: string
    primary_key: yes
    description: "The unique identifier for the IVR call."
    sql: ${TABLE}.ivr_call_id ;;
  }
  dimension: ivr_call_sou {
    label: "IVR Call Source"
    type: string
    description: "The source of the IVR call, such as a call center or website."
    sql: ${TABLE}.ivr_call_sou ;;
  }

  dimension: ivr_final_result {
    label: "IVR Final Result"
    type: string
    description: "The final result of the IVR call."
    sql: ${TABLE}.ivr_final_result ;;
  }
  dimension: ivr_line_id {
    label: "IVR Line ID"
    type: string
    description: "Identifier for the IVR line used for the call."
    sql: ${TABLE}.ivr_line_id ;;
  }
  dimension: ivr_steps {
    label: "IVR Steps"
    type: string
    description: "IVR Steps tracks the sequence of IVR prompts and options navigated by the caller."
    sql: ${TABLE}.ivr_steps ;;
  }
  dimension: kpi_selfhelp_rule {
    label: "KPI Self-help Rule"
    type: string
    description: "Key Performance Indicator (KPI) for self-help rules."
    sql: ${TABLE}.kpi_selfhelp_rule ;;
  }
  dimension: kpi_selfhelpstart_rule {
    label: "KPI Self-help Start Rule"
    type: string
    description: "The KPI (Key Performance Indicator) rule used to measure the time taken by the subscriber to start using the self-help IVR menu."
    sql: ${TABLE}.kpi_selfhelpstart_rule ;;
  }
  dimension: mtn {
    label: "Mobile Telephone Number (MTN)"
    type: string
    description: "Mobile Telephone Number (MTN) is a unique identifier for a mobile phone."
    sql: ${TABLE}.mtn ;;
  }
  dimension: natl_acct_type_cd {
    label: "National Account Type Code"
    type: string
    description: "The national account type code of the caller."
    sql: ${TABLE}.natl_acct_type_cd ;;
  }
  dimension: notification_id {
    label: "Notification ID"
    type: string
    description: "Identifier for the notification associated with the call."
    sql: ${TABLE}.notification_id ;;
  }
  dimension: npa_num {
    label: "NPA Number"
    type: string
    description: "Numbering Plan Area (NPA) is a system of three-digit area codes and seven-digit telephone numbers that directs telephone calls to particular regions on a public switched telephone network (PSTN)."
    sql: ${TABLE}.npa_num ;;
  }
  dimension: onebill_ind {
    label: "One Bill Indicator"
    type: string
    description: "Indicates whether the customer is enrolled in the One Bill program, which allows customers to combine their Verizon Wireless mobile charges and their Verizon Communications landline charges into one monthly bill."
    sql: ${TABLE}.onebill_ind ;;
  }
  dimension: paid_amt {
    label: "Paid Amount"
    type: number
    description: "The amount of money that the customer has paid for the IVR call."
    sql: ${TABLE}.paid_amt ;;
  }
  dimension: port_in_ind {
    label: "Port-in Indicator"
    type: string
    description: "Indicates whether the subscriber is a port-in customer. Port-in customers are subscribers who have transferred their phone number from another carrier to the current carrier."
    sql: ${TABLE}.port_in_ind ;;
  }
  dimension: prepaid_ind {
    label: "Prepaid Indicator"
    type: yesno
    description: "Indicates whether the subscriber is a prepaid or postpaid customer. Prepaid customers pay for their service in advance, while postpaid customers are billed at the end of each month."
    sql: CASE WHEN ${TABLE}.prepaid_ind = 'Y' THEN TRUE ELSE FALSE END ;;

  }
  dimension: prepaid_pplan_cd {
    label: "Pre-paid Price Plan Code"
    type: string
    description: "The price plan code for prepaid customers."
    sql: ${TABLE}.prepaid_pplan_cd ;;
  }
  dimension: prepaid_status_cd {
    label: "Pre-paid Status Code"
    type: string
    description: "Prepaid status of the caller."
    sql: ${TABLE}.prepaid_status_cd ;;
  }
  dimension: prompt_selected_cd {
    label: "Prompt Selected Code"
    type: string
    description: "The code for the prompt selected by the caller."
    sql: ${TABLE}.prompt_selected_cd ;;
  }
  dimension: revised_role_cd {
    label: "Revised Role Code"
    type: string
    description: "Revised role code for the caller."
    sql: ${TABLE}.revised_role_cd ;;
  }
  dimension: rgstr_geotel_ind {
    label: "Registered GTN Indicator"
    type: string
    description: "This column indicates whether the phone number used to make the call is a registered geographic telephone number (GTN)."
    sql: ${TABLE}.rgstr_geotel_ind ;;
  }
  dimension: route_cd {
    label: "Route Code"
    type: string
    description: "This column contains the code for the route that the call took."
    sql: ${TABLE}.route_cd ;;
  }
  dimension: route_id {
    label: "Route ID"
    type: string
    description: "The unique identifier of the route (Hotline) associated with the IVR call."
    sql: ${TABLE}.route_id ;;
  }
  dimension: selfhelp {
    label: "Self-help Flag"
    type: string
    description: "Self-help flag."
    sql: ${TABLE}.selfhelp ;;
  }
  dimension: selfhelpstart { ##this should not be a string if it is a timestamp
    label: "Self-help Start Time"
    type: string
    description: "The time when the subscriber started using the self-help IVR menu."
    sql: ${TABLE}.selfhelpstart ;;
  }
  dimension: sls_dist_chnl_grp_cd {
    type: string
    description: "This column contains the code for the sync loss seconds distance channel group."
    sql: ${TABLE}.sls_dist_chnl_grp_cd ;;
  }
  dimension: sor_id {
    type: string
    description: "The identifier for the source system of record. Always use 'V'"
    sql: ${TABLE}.sor_id ;;
  }
  dimension: sor_nm {
    type: string
    description: "The name of the Standard Operating Procedure (SOP) associated with the IVR call."
    sql: ${TABLE}.sor_nm ;;
  }
  dimension: transfer_point {
    type: string
    description: "Transfer Point indicates the point at which the call was transferred to a human agent, if applicable."
    sql: ${TABLE}.transfer_point ;;
  }
  dimension: usr_orig_dn {
    type: string
    description: "Original Directory Number (DN) of the user associated with the call."
    sql: ${TABLE}.usr_orig_dn ;;
  }
}
