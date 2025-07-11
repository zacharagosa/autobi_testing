view: dla_sum_fact {
  sql_table_name: `aragosalooker.verizon_autobi..dla_sum_fact_exp` ;;

  dimension: access_amt {
    label: "Access Amount"
    description: "This numeric field indicates the total monetary value of the service access, such as data or voice, that has been provided or allotted to a customer's account for their usage. It reflects the granted allowance in financial terms. Net dollar amount of the recurring monthly service charge that the customer is billed for all lines of service on a customer account for a particular billing cycle."
    type: number
    sql: ${TABLE}.access_amt ;;
  }
  dimension: acct_access_amt {
    label: "Account Access Amount"
    description: "This numeric field represents the cumulative monetary value of all services (e.g., data, voice, messaging) that have been consumed or utilized by all individuals associated with a particular account. It provides a comprehensive view of overall account usage in terms of cost."
    type: number
    sql: ${TABLE}.acct_access_amt ;;
  }
  dimension: acct_data_access_amt {
    label: "Account Data Access Amount"
    description: "This numeric field specifies the monetary cost exclusively associated with the data services that the customer has used and been billed for on their account. It helps to quantify the financial impact of data consumption."
    type: number
    sql: ${TABLE}.acct_data_access_amt ;;
  }
  dimension: acct_num {
    label: "Account Number"
    description: "This alphanumeric identifier uniquely identifies the customer's primary service account linked to their data access activities. It serves as a key for retrieving all customer-related information and transactions."
    type: string
    sql: ${TABLE}.acct_num ;;
  }
  dimension: acct_voice_access_amt {
    label: "Account Voice Access Amount"
    description: "This numeric field denotes the monetary value charged to the customer's account specifically for their voice call usage, such as minutes consumed. It helps in understanding the cost component related to voice services."
    type: number
    sql: ${TABLE}.acct_voice_access_amt ;;
  }
  dimension: act_cnt {
    label: "Activity Count"
    description: "This numeric field provides a tally of distinct actions, events, or transactions that have taken place on a customer's account over a specific period. It can indicate the level of interaction or changes occurring within the account."
    type: number
    sql: ${TABLE}.act_cnt ;;
  }
  dimension: activity_cd {
    label: "Activity Code"
    description: "This categorical code classifies the nature or kind of action that has occurred on the customer's account, allowing for systematic categorization and analysis of different account events."
    type: string
    sql: ${TABLE}.activity_cd ;;
  }
  dimension_group: activity_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.activity_dt ;;
  }
  dimension: area_cd {
    label: "Area Code"
    description: "This numeric code indicates the geographical area linked to the customer's account number, often corresponding to the primary billing or service address. It is useful for regional analysis."
    type: string
    sql: ${TABLE}.area_cd ;;
  }
  dimension: area_desc {
    label: "Area Description"
    description: "This text field provides a descriptive name for the geographical area code associated with the customer's account, offering a more human-readable context than just the numerical code."
    type: string
    sql: ${TABLE}.area_desc ;;
  }
  dimension: bgid {
    label: "Business Group ID"
    description: "This alphanumeric identifier uniquely identifies the specific business group or organizational entity to which a customer's account belongs. It is critical for managing corporate or multi-account relationships."
    type: string
    sql: ${TABLE}.bgid ;;
  }
  dimension: bgid_source {
    label: "BGID Source"
    description: "This field indicates the system, database, or origin point from which the Business Group ID (BGID) for the account was derived or registered. It helps in understanding data lineage and consistency."
    type: string
    sql: ${TABLE}.bgid_source ;;
  }
  dimension: birth_year {
    label: "Birth Year"
    description: "This numeric field records the year in which the primary subscriber was born. It can be used for demographic analysis and age-based segmentation of the customer base."
    type: number
    sql: ${TABLE}.birth_year ;;
  }
  dimension: bonus_data_allow {
    label: "Bonus Data Allowance"
    description: "This numeric field quantifies any additional, complimentary data volume (e.g., in GB or MB) that has been provided to the customer as a promotional incentive or extra benefit."
    type: string
    sql: ${TABLE}.bonus_data_allow ;;
  }
  dimension: boost_data_allow {
    label: "Boost Data Allowance"
    description: "This numeric field specifies the dedicated data volume (e.g., in GB or MB) that a customer is permitted to use if they are subscribed to a 'Boost' service plan or add-on."
    type: string
    sql: ${TABLE}.boost_data_allow ;;
  }
  dimension: carryover_data_allow {
    label: "Carryover Data Allowance"
    description: "This numeric field indicates the volume of unused data (e.g., in GB or MB) from a previous billing cycle that a customer is allowed to transfer and use in their current cycle."
    type: string
    sql: ${TABLE}.carryover_data_allow ;;
  }
  dimension: change_reas_cd {
    label: "Change Reason Code"
    description: "This categorical code explains the specific justification or cause behind any modification made to the monetary value of the customer's account access. It provides insight into why billing adjustments occurred."
    type: string
    sql: ${TABLE}.change_reas_cd ;;
  }
  dimension: channel_type {
    label: "Channel Type"
    description: "This categorical field describes the specific medium or method through which the subscriber interacts with services or manages their account (e.g., online, retail store, call center)."
    type: string
    sql: ${TABLE}.channel_type ;;
  }
  dimension: churn_score_decile {
    label: "Churn Score Decile"
    description: "This numeric decile (1-10) represents a predictive score indicating the likelihood of a subscriber discontinuing their service, with higher deciles typically suggesting a greater churn risk."
    type: number
    sql: ${TABLE}.churn_score_decile ;;
  }
  dimension: coe_data_pplan_access_amt {
    label: "COE Data Price Plan Access Amount"
    description: "This is the amount of data access under the customer's price plan (PPLAN). This numeric field specifies the monetary value of data services that are explicitly included or covered by the customer's chosen price plan (PPLAN). It helps identify the value of the planned data allowance."
    type: number
    sql: ${TABLE}.coe_data_pplan_access_amt ;;
  }
  dimension: coe_pplan_class_desc {
    label: "COE Price Plan Class Description"
    description: "This is the price plan class description for the customer's account, which defines the customer's price plan including the price they pay, free minute allowances, data allowances, and one or more SFOs (Service Features On). This detailed text field provides a comprehensive description of the overarching category or classification of the customer's price plan, outlining its core components like cost, voice minutes, data, and service features."
    type: string
    sql: ${TABLE}.coe_pplan_class_desc ;;
  }
  dimension: coe_pplan_ctgry_desc {
    label: "COE Price Plan Category Description"
    description: "This is the category description for the customer's price plan, which defines the customer's price plan that includes the price he pays as well as the free minute allowances and data allowances, as well as one or more SFOs. This text field provides a descriptive overview of the broader category of the customer's price plan, detailing the financial commitment, included voice and data allowances, and any associated Service Features On (SFOs)."
    type: string
    sql: ${TABLE}.coe_pplan_ctgry_desc ;;
  }
  dimension: coe_pplan_group {
    label: "COE Price Plan Group"
    description: "This is the grouping of the customer's price plan, which includes the price they pay as well as the free minute and data allowances, as well as one or more SFOs. This categorical field indicates a logical aggregation or classification of the customer's price plan, allowing for analysis based on common features such as pricing tiers, bundled allowances, and included Service Features On (SFOs)."
    type: string
    sql: ${TABLE}.coe_pplan_group ;;
  }
  dimension: coe_pplan_segmt_desc {
    label: "COE Price Plan Segment Description"
    description: "This is the segment description for the customer's price plan, which defines the customer's price plan including the price he pays as well as the free minute allowances and data allowances, as well as one or more SFOs. This text field describes the specific market segment or tier that the customer's price plan belongs to, detailing the associated cost, free voice minutes, data allowances, and any included Service Features On (SFOs)."
    type: string
    sql: ${TABLE}.coe_pplan_segmt_desc ;;
  }
  dimension: coe_pplan_service_type_desc {
    label: "COE Price Plan Service Type Description"
    description: "This is the service type of the customer's price plan, which includes the price they pay as well as the free minute allowances and data allowances, as well as one or more SFOs. This text field describes the overarching type of service encompassed by the customer's price plan (e.g., mobile, internet, bundled), detailing the associated costs, voice minutes, data allowances, and any included Service Features On (SFOs)."
    type: string
    sql: ${TABLE}.coe_pplan_service_type_desc ;;
  }
  dimension: coe_pplan_sub_type_desc {
    label: "COE Price Plan Subtype Description"
    description: "This is the subtype of the customer's price plan, which defines the customer's price plan that includes the price he pays as well as the free minute allowances and data allowances, as well as one or more SFOs. This detailed text field describes a more granular classification or variant within the customer's main price plan, outlining specific features like cost, voice minutes, data allowances, and any included Service Features On (SFOs)."
    type: string
    sql: ${TABLE}.coe_pplan_sub_type_desc ;;
  }
  dimension: coe_pplan_type_desc {
    label: "COE Price Plan Type Description"
    description: "This is the type of price plan that the customer has. This text field provides a general description of the broad category or kind of price plan the customer is currently subscribed to, offering a high-level overview of their service tier."
    type: string
    sql: ${TABLE}.coe_pplan_type_desc ;;
  }
  dimension: coe_prod_type_cd {
    label: "COE Product Type Code"
    description: "This is the product type code for the customer account line. This categorical code identifies the specific type of product (e.g., smartphone, tablet, hotspot) that is associated with an individual line on the customer's account."
    type: string
    sql: ${TABLE}.coe_prod_type_cd ;;
  }
  dimension: coe_voice_pplan_access_amt {
    label: "COE Voice Price Plan Access Amount"
    description: "This is the amount of voice access to the subscriber's price plan (PPLAN). This numeric field specifies the monetary value of voice services that are included or covered by the subscriber's chosen price plan (PPLAN). It quantifies the planned allowance for voice calls."
    type: number
    sql: ${TABLE}.coe_voice_pplan_access_amt ;;
  }
  dimension: cro_restd_erp_cust_sub_segmt_cd {
    label: "CRM Customer Segment Code"
    description: "This categorical code defines a specific sub-segment of the customer base as categorized within the CRM (Customer Relationship Management) system, often used for targeted marketing and service strategies."
    type: string
    sql: ${TABLE}.cro_restd_erp_cust_sub_segmt_cd ;;
  }
  dimension: cro_restd_segmt_cd {
    label: "Restored Segment Code"
    description: "This categorical code identifies a specific customer segment or group to which an account belongs that has undergone a restoration process, possibly after a suspension or disconnection."
    type: string
    sql: ${TABLE}.cro_restd_segmt_cd ;;
  }
  dimension: curr_contract_term {
    label: "Current Contract Term"
    description: "This numeric field indicates the remaining duration, typically in months, of the active service contract for the subscriber's account. It helps in tracking contract expiration dates."
    type: string
    sql: ${TABLE}.curr_contract_term ;;
  }
  dimension: cust_id {
    label: "Customer ID"
    description: "This alphanumeric identifier uniquely identifies the primary customer who owns or is responsible for the account. It serves as a fundamental key for customer data management."
    type: string
    sql: ${TABLE}.cust_id ;;
  }
  dimension: cust_line_seq_id {
    label: "Customer Line Sequence ID"
    description: "This numeric identifier indicates the specific order or position of a particular service line within a customer's multi-line account. It helps in distinguishing individual lines."
    type: string
    sql: ${TABLE}.cust_line_seq_id ;;
  }
  dimension: cust_type_cd {
    label: "Customer Type Code"
    description: "This categorical code classifies the type of customer associated with the account (e.g., individual, business, government). It helps in segmenting the customer base for tailored services."
    type: string
    sql: ${TABLE}.cust_type_cd ;;
  }
  dimension: data_access_amt {
    label: "Data Access Amount"
    description: "This numeric field quantifies the monetary cost of data services billed to the customer's account. It reflects the financial impact of actual data consumption."
    type: number
    sql: ${TABLE}.data_access_amt ;;
  }
  dimension: data_tier {
    label: "Data Tier"
    description: "This categorical field indicates the specific level or tier of data service the subscriber is subscribed to, often corresponding to different speeds, allowances, or features."
    type: string
    sql: ${TABLE}.data_tier ;;
  }
  dimension: deact_d3_cnt {
    label: "Deactivation D3 Count"
    description: "This is the number of deactivations that occurred in the third quarter (Q3) for the account. This column indicates whether a customer's line was disconnected within 30 days of activation (1) or not (0)."
    type: number
    sql: ${TABLE}.deact_d3_cnt ;;
  }
  dimension: deact_d6_cnt {
    label: "Deactivation D6 Count"
    description: "This is the number of deactivations that occurred in the month of June. This column indicates whether a customer's line was disconnected within 60 days of activation (1) or not (0)."
    type: number
    sql: ${TABLE}.deact_d6_cnt ;;
  }
  dimension: deact_de_cnt {
    label: "Deactivation Count"
    description: "This is the count of deactivations in the account. This column indicates whether a customer's line was disconnected (1) or not (0)."
    type: number
    sql: ${TABLE}.deact_de_cnt ;;
  }
  dimension: device_brand_nm {
    label: "Device Brand Name"
    description: "This text field provides the commercial brand name of the mobile phone or other device linked to the customer's account (e.g., 'Samsung', 'Apple')."
    type: string
    sql: ${TABLE}.device_brand_nm ;;
  }
  dimension: device_generation {
    label: "Device Generation"
    description: "This categorical field indicates the technological generation or version of the device associated with the customer's account (e.g., '5G', 'LTE', '4G'). It helps in tracking device modernity."
    type: string
    sql: ${TABLE}.device_generation ;;
  }
  dimension: device_grouping {
    label: "Device Grouping"
    description: "This categorical field creates logical clusters or categories of devices that are collectively used by a single customer, allowing for consolidated analysis of device usage patterns."
    type: string
    sql: ${TABLE}.device_grouping ;;
  }
  dimension: device_prod_nm {
    label: "Device Product Name"
    description: "This text field provides the specific commercial name of the device model (e.g., 'iPhone 15 Pro', 'Galaxy S24 Ultra') linked to the customer's account."
    type: string
    sql: ${TABLE}.device_prod_nm ;;
  }
  dimension: device_type_cd {
    label: "Device Type Code"
    description: "This categorical code classifies the general type of device associated with the customer's account (e.g., 'Smartphone', 'Tablet', 'Wearable')."
    type: string
    sql: ${TABLE}.device_type_cd ;;
  }
  dimension: duns_loc_num {
    label: "DUNS Location Number"
    description: "This numeric identifier is a unique nine-digit number assigned by Dun & Bradstreet, identifying a specific business location associated with the customer's account. It's primarily used for business accounts."
    type: string
    sql: ${TABLE}.duns_loc_num ;;
  }
  dimension: ecpd_profile_id {
    label: "ECPD Profile ID"
    description: "This is the ECPD profile ID for the account. This alphanumeric identifier refers to the profile ID within the ECPD (Enhanced Customer Profile Database) system, which stores detailed customer and account information."
    type: string
    sql: ${TABLE}.ecpd_profile_id ;;
  }
  dimension: edw_edge_qualified_ind {
    label: "EDGE Qualified Indicator"
    description: "Indicates whether the account is eligible for EDGE technology. This binary indicator (e.g., 'Y'/'N' or 'True'/'False') flags whether the customer's account meets the criteria to utilize EDGE (Enhanced Data rates for GSM Evolution) technology, potentially for specific features or plans."
    type: string
    sql: ${TABLE}.edw_edge_qualified_ind ;;
  }
  dimension: eqp_device_id {
    label: "Equipment Device ID"
    description: "This is the device ID associated with the account. This unique identifier specifically refers to the equipment device linked to the customer's account, allowing for precise tracking of physical hardware assets."
    type: string
    sql: ${TABLE}.eqp_device_id ;;
  }
  dimension: eqp_prod_nm {
    label: "Equipment Product Name"
    description: "This is the product name of the equipment associated with the account. This text field provides the commercial name of the specific equipment item (e.g., 'Verizon Router 6.0', '5G Home Internet Gateway') linked to the customer's account."
    type: string
    sql: ${TABLE}.eqp_prod_nm ;;
  }
  dimension: erp_cust_sub_segmt_cd {
    label: "ERP Customer Sub-Segment Code"
    description: "This categorical code defines a granular customer sub-segment as categorized within the ERP (Enterprise Resource Planning) system, often used for financial and operational reporting."
    type: string
    sql: ${TABLE}.erp_cust_sub_segmt_cd ;;
  }
  dimension: erp_dist_chnl_cd {
    label: "ERP Distribution Channel Code"
    description: "This categorical code identifies the specific distribution channel (e.g., retail, online, direct sales) through which the customer's service was acquired or managed, as recorded in the ERP system."
    type: string
    sql: ${TABLE}.erp_dist_chnl_cd ;;
  }
  dimension: esn_num {
    label: "Electronic Serial Number (ESN)"
    description: "This is the Electronic Serial Number (ESN) assigned to each transceiver by the manufacturer. This unique alphanumeric identifier is an unchangeable serial number embedded by the manufacturer into a mobile device's transceiver. It's crucial for device identification and activation."
    type: string
    sql: ${TABLE}.esn_num ;;
  }
  dimension: ethnicity_segmt {
    label: "Ethnicity Segment"
    description: "This is the ethnicity segmentation for the subscriber. This categorical field classifies the subscriber based on their ethnicity, allowing for demographic analysis and culturally targeted marketing efforts."
    type: string
    sql: ${TABLE}.ethnicity_segmt ;;
  }
  dimension: f1k_ind {
    label: "F1K Indicator"
    description: "This is an indicator that indicates whether the account has been flagged as having a potential F1K (Federal 1099-K) tax form requirement. This binary indicator (e.g., 'Y'/'N' or 'True'/'False') flags Fortune 1000 Indicator. Values include Y (Fortune 1000), N (Non-Fortune 1000) and Untagged. Populated based on CUST_ACCT_LINE_SEGMT.SEGMT_VALUE where SEGMT_TYPE_CD = F1K_IND."
    type: string
    sql: ${TABLE}.f1k_ind ;;
  }
  dimension: gift_data_allow {
    label: "Gift Data Allowance"
    description: "This is the amount of data usage allowed as part of a gift promotion. This numeric field quantifies the specific volume of data (e.g., in GB or MB) that a customer receives as a complimentary allowance due to a gift or promotional offer."
    type: string
    sql: ${TABLE}.gift_data_allow ;;
  }
  dimension: gross_adds {
    label: "Gross Adds"
    description: "Gross adds to the account, which is the total amount added to the account in the month. This numeric field represents the total number of new service lines or accounts activated within a given month, without accounting for any deactivations or churn."
    type: number
    sql: ${TABLE}.gross_adds ;;
  }
  dimension_group: hdp_insert_dt {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.hdp_insert_dt_time ;;
  }
  dimension: in_contract_term {
    label: "In Contract Term"
    description: "This numeric field specifies the duration, in months, for which the customer has been actively bound by a service contract with Verizon."
    type: string
    sql: ${TABLE}.in_contract_term ;;
  }
  dimension: involuntary_disconnects {
    label: "Involuntary Disconnects"
    description: "This numeric field counts the instances where a customer's service was terminated by the provider, typically due to non-payment or policy violations."
    type: number
    sql: ${TABLE}.involuntary_disconnects ;;
  }
  dimension: lang_pref_ind {
    label: "Language Preference Indicator"
    description: "This categorical field indicates the preferred language for communications and interactions associated with the customer's account."
    type: string
    sql: ${TABLE}.lang_pref_ind ;;
  }
  dimension: life_stage_segmt {
    label: "Life Stage Segment"
    description: "This categorical field classifies the customer's account based on a demographic or behavioral life stage (e.g., 'Young Professional', 'Family with Children', 'Retiree')."
    type: string
    sql: ${TABLE}.life_stage_segmt ;;
  }
  dimension: line_type_cd {
    label: "Line Type Code"
    description: "This categorical code classifies the nature or purpose of an individual service line within a customer's account (e.g., 'Primary', 'Secondary', 'Data-only')."
    type: string
    sql: ${TABLE}.line_type_cd ;;
  }
  dimension: loan_num {
    label: "Loan Number"
    description: "This alphanumeric identifier refers to a specific loan agreement that might be linked to the customer's account, potentially for device financing or other services."
    type: string
    sql: ${TABLE}.loan_num ;;
  }
  dimension: managed_ind {
    label: "Managed Indicator"
    description: "This binary indicator (e.g., 'Y'/'N' or 'True'/'False') flags whether the customer's account falls under a specific managed service program or internal management tier by Verizon."
    type: string
    sql: ${TABLE}.managed_ind ;;
  }
  dimension: master_agent_area_cd {
    label: "Master Agent Area Code"
    description: "This numeric code indicates the geographical area associated with the master agent who manages or was responsible for the customer's account."
    type: string
    sql: ${TABLE}.master_agent_area_cd ;;
  }
  dimension: master_agent_id {
    label: "Master Agent ID"
    description: "This alphanumeric identifier uniquely identifies the master agent who oversees or is responsible for a group of customer accounts."
    type: string
    sql: ${TABLE}.master_agent_id ;;
  }
  dimension: mgd_segmt {
    label: "Managed Segment"
    description: "This categorical field represents a specific segmentation value assigned to the account, often used for targeted marketing, service tiering, or internal analysis."
    type: string
    sql: ${TABLE}.mgd_segmt ;;
  }
  dimension: mkt_cd {
    label: "Market Code"
    description: "This categorical code broadly identifies the specific market segment or geographical region associated with the customer's account."
    type: string
    sql: ${TABLE}.mkt_cd ;;
  }
  dimension: mn_line_ind {
    label: "Main Line Indicator"
    description: "This is an (Y/N) indicator that indicates whether a line is a main or additional line in a customer's account."
    type: string
    sql: ${TABLE}.mn_line_ind ;;
  }
  dimension: mn_prod_nm {
    label: "Main Product Name"
    description: "This field contains a variety of product names, likely by the manufacturer or in a product database. The entries appear to follow different naming conventions, often including a combination of brand identifiers, model numbers or names, specifications, and sometimes color or size information."
    type: string
    sql: ${TABLE}.mn_prod_nm ;;
  }
  dimension: mnc_ind {
    label: "Mobile Network Code Indicator"
    description: "This column serves as a binary indicator, using 'Y' to denote that the customer is a multinational company and 'N' to indicate that the customer is not."
    type: string
    sql: ${TABLE}.mnc_ind ;;
  }
  dimension: mtn {
    label: "Mobile Telephone Number"
    description: "This numeric field contains the subscriber's primary mobile telephone number, serving as the unique identifier for their voice and messaging services."
    type: string
    sql: ${TABLE}.mtn ;;
  }
  dimension: odi_ind {
    label: "Open Development Initiative Indicator"
    description: "This is indicator (ODI/VZW) flags if the customer's account is part of the Open Development Initiative, which might grant special device or service interoperability."
    type: string
    sql: ${TABLE}.odi_ind ;;
  }
  dimension: orig_sor_id {
    label: "Original System of Record ID"
    description: "This alphanumeric identifier indicates the initial or primary system from which the account's data was first originated or recorded. It's crucial for data lineage and reconciliation."
    type: string
    sql: ${TABLE}.orig_sor_id ;;
  }
  dimension: plan_data_allow {
    label: "Plan Data Allowance"
    description: "This numeric field quantifies the total volume of data (e.g., in GB or MB) that is included as part of the customer's current service plan. It defines the base data allowance."
    type: string
    sql: ${TABLE}.plan_data_allow ;;
  }
  dimension: plan_type {
    label: "Plan Type"
    description: "This categorical field broadly describes the kind of service plan the customer is subscribed to (e.g., 'Prepaid', 'Postpaid', 'Family Plan')."
    type: string
    sql: ${TABLE}.plan_type ;;
  }
  dimension: port_carrier_cd {
    label: "Port Carrier Code"
    description: "This alphanumeric code identifies the previous or current telecommunications carrier from or to which the customer's phone number has been transferred (ported)."
    type: string
    sql: ${TABLE}.port_carrier_cd ;;
  }
  dimension: port_status_cd {
    label: "Port Status Code"
    description: "This categorical code indicates the current status of a phone number porting request for the account (e.g., 'Pending', 'Completed', 'Rejected')."
    type: string
    sql: ${TABLE}.port_status_cd ;;
  }
  dimension: pplan_cd {
    label: "Price Plan Code"
    description: "This unique code specifically identifies the customer's detailed price plan, encompassing its cost, included voice minutes, data allowances, and any optional service features (SFOs)."
    type: string
    sql: ${TABLE}.pplan_cd ;;
  }
  dimension: pplan_group {
    label: "Price Plan Group"
    description: "This categorical field classifies the customer's price plan into broader groups based on shared characteristics like pricing tiers, bundled allowances (voice, data), and included Service Features Options (SFOs)."
    type: string
    sql: ${TABLE}.pplan_group ;;
  }
  dimension: pplan_line_acct_cd {
    label: "Price Plan Line Account Code"
    description: "This code links a specific price plan to an individual subscriber's account, serving as an identifier for the plan applied at the line level."
    type: string
    sql: ${TABLE}.pplan_line_acct_cd ;;
  }
  dimension: pplan_mkt_cd {
    label: "Price Plan Market Code"
    description: "This categorical code identifies the specific market segment or geographical area to which the customer's price plan applies."
    type: string
    sql: ${TABLE}.pplan_mkt_cd ;;
  }
  dimension: pplan_service_type_cd {
    label: "Price Plan Service Type Code"
    description: "This code classifies the fundamental type of service embodied by the customer's price plan, outlining its core components such as pricing, voice minutes, data allowances, and any included Service Features Options (SFOs)."
    type: string
    sql: ${TABLE}.pplan_service_type_cd ;;
  }
  dimension: pplan_share {
    label: "Price Plan Share"
    description: "This numeric field indicates the proportion, expressed as a percentage, of the overall service access cost that was directly attributed to or covered by the customer's specific price plan."
    type: string
    sql: ${TABLE}.pplan_share ;;
  }
  dimension: prepaid_ind {
    label: "Prepaid Indicator"
    description: "This binary indicator (e.g., 'Y'/'N' ) flags whether the customer's account operates on a prepaid model, where services are paid for in advance."
    type: string
    sql: ${TABLE}.prepaid_ind ;;
  }
  dimension: prod_nm {
    label: "Product Name"
    description: "This text field provides the specific commercial name of the product or service that the customer's account is utilizing."
    type: string
    sql: ${TABLE}.prod_nm ;;
  }
  dimension: promo_type {
    label: "Promotion Type"
    description: "This categorical field broadly describes the kind of promotional offer or discount that has been activated on the customer's account (e.g., 'Discount', 'Bundle', 'Free Data')."
    type: string
    sql: ${TABLE}.promo_type ;;
  }
  dimension: react_cnt {
    label: "Reactivation Count"
    description: "This numeric field counts the instances where a previously deactivated account or service line was reactivated, indicating successful win-back or restoration efforts."
    type: number
    sql: ${TABLE}.react_cnt ;;
  }
  dimension: region_cd {
    label: "Region Code"
    description: "This categorical code identifies the broad geographical region associated with the customer's account, used for high-level regional analysis and planning."
    type: string
    sql: ${TABLE}.region_cd ;;
  }
  dimension: region_desc {
    label: "Region Description"
    description: "This text field provides a descriptive name for the geographical region where the customer's account is primarily based, offering a human-readable context."
    type: string
    sql: ${TABLE}.region_desc ;;
  }
  dimension: rev_gen_ind {
    label: "Revenue Generation Indicator"
    description: "This binary indicator (e.g., 'Y'/'N') flags whether the customer's account has contributed to the company's financial revenue during a given period."
    type: string
    sql: ${TABLE}.rev_gen_ind ;;
  }
  dimension: rltd_acct_id {
    label: "Related Account ID"
    description: "This alphanumeric identifier refers to a specific, often a simplified or truncated, account ID that is linked to the primary customer account for certain related purposes."
    type: string
    sql: ${TABLE}.rltd_acct_id ;;
  }
  dimension: rollup_cd {
    label: "Rollup Code"
    description: "This categorical code provides a higher-level aggregation or summary classification of the kind of data services being utilized or billed on the customer's account, enabling summarized reporting."
    type: string
    sql: ${TABLE}.rollup_cd ;;
  }
  dimension_group: rpt_mth {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.rpt_mth ;;
  }
  dimension: rpt_pplan_cd {
    label: "Report Price Plan Code"
    description: "This unique code identifies the specific price plan the customer is on for reporting purposes, detailing its cost, included voice minutes, data allowances, and any Service Features Options (SFOs)."
    type: string
    sql: ${TABLE}.rpt_pplan_cd ;;
  }
  dimension: rpt_year {
    label: "Report Year"
    description: "This numeric field indicates the calendar year in which the account record or its activity was compiled or included in a report."
    type: number
    sql: ${TABLE}.rpt_year ;;
  }
  dimension: sim_type_cd {
    label: "SIM Type Code"
    description: "This categorical code classifies the physical or functional type of SIM card (Subscriber Identity Module) inserted into the subscriber's device (e.g., 'Standard', 'Micro', 'Nano', 'eSIM')."
    type: string
    sql: ${TABLE}.sim_type_cd ;;
  }
  dimension: sls_outlet_id {
    label: "Sales Outlet ID"
    description: "This alphanumeric identifier pinpoints the specific physical or virtual sales location (e.g., retail store, online portal) where the customer's account was created or serviced."
    type: string
    sql: ${TABLE}.sls_outlet_id ;;
  }
  dimension: sls_prsn_id {
    label: "Salesperson ID"
    description: "This alphanumeric identifier uniquely identifies the individual salesperson who was involved in the creation or servicing of the customer's account."
    type: string
    sql: ${TABLE}.sls_prsn_id ;;
  }
  dimension: sor_id {
    label: "System of Record ID"
    description: "This alphanumeric identifier serves as the primary key or unique identifier for each individual record within this specific data table."
    type: string
    sql: ${TABLE}.sor_id ;;
  }
  dimension: sub_region_cd {
    label: "Subscriber Region Code"
    description: "This categorical code identifies a specific sub-region within a broader geographical region where the subscriber's service is primarily located."
    type: string
    sql: ${TABLE}.sub_region_cd ;;
  }
  dimension: tenure {
    label: "Tenure"
    description: "This numeric field indicates the duration, typically in months or years, for which a customer has continuously maintained their subscription to the service."
    type: string
    sql: ${TABLE}.tenure ;;
  }
  dimension: total_data_allow {
    label: "Total Data Allowance"
    description: "This numeric field represents the cumulative volume of data (e.g., in GB or MB) that is permitted for the customer's account across all sources, including plan, bonus, and carryover allowances."
    type: string
    sql: ${TABLE}.total_data_allow ;;
  }
  dimension: user_id {
    label: "User ID"
    description: "This alphanumeric identifier uniquely identifies each individual user record within the dataset."
    type: string
    sql: ${TABLE}.user_id ;;
  }
  dimension: vertical {
    label: "Vertical"
    description: "This numeric field quantifies how many individual service lines or connections (e.g., phone numbers) are grouped together under a single customer account."
    type: string
    sql: ${TABLE}.vertical ;;
  }
  dimension: ves_account_id {
    label: "VES Account ID"
    description: "This alphanumeric identifier uniquely identifies accounts that fall under the Verizon Enterprise Solutions (VES) division, catering specifically to business and large organizational clients."
    type: string
    sql: ${TABLE}.ves_account_id ;;
  }
  dimension: voice_access_amt {
    label: "Voice Access Amount"
    description: "This numeric field quantifies the monetary cost incurred for voice communication services (e.g., call minutes) that have been billed to the customer's account."
    type: number
    sql: ${TABLE}.voice_access_amt ;;
  }
  dimension: voluntary_disconnects {
    label: "Voluntary Disconnects"
    description: "This numeric field counts the instances where a customer actively chose to terminate their service or a service line on their account."
    type: number
    sql: ${TABLE}.voluntary_disconnects ;;
  }
  dimension: vsn_cust_type_cd {
    label: "VSN Customer Type Code"
    description: "This categorical code classifies the type of subscriber (e.g., 'Individual', 'Business', 'Residential') within the system."
    type: string
    sql: ${TABLE}.vsn_cust_type_cd ;;
  }
  dimension: vz2_segmt_cd {
    label: "VZ2 Segment Code"
    description: "This categorical code identifies a specific segment or tier within the VZ2, allowing for granular data classification."
    type: string
    sql: ${TABLE}.vz2_segmt_cd ;;
  }
  dimension: vzw_value {
    label: "VZW Value"
    description: "Populated based on the CUST_ACCT_LINE_SEGMT.SEGMT_VALUE where SEGMT_TYPE_CD = VZW_VALUE. Values include G (gold), L (low value), N (regular) and Untagged. Segment descriptions can be found in the SEGMENT_VALUE_V table."
    type: string
    sql: ${TABLE}.vzw_value ;;
  }

  dimension: composite_primary_key {
    type: string
    primary_key: yes
    sql: concat (${cust_id},'|', ${cust_line_seq_id}, '|' , ${rpt_mth_date});;
 }
  measure: dailyactivitycount {
    label: "Daily Activity Count"
    type: count
  }
}
