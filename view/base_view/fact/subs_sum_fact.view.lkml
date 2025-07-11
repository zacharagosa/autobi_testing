view: subs_sum_fact {
  sql_table_name: `aragosalooker.verizon_autobi.subs_sum_fact_exp` ;;

  dimension: access_amt {
    label: "The amount of access granted to the subscriber's account."
    description: "This numeric field quantifies the monetary value of the service access, such as data or voice, that has been provided or allotted to a subscriber's account for their usage. It reflects the granted allowance in financial terms. Net dollar amount of the recurring monthly service charge that the customer is billed for all lines of service on a customer account for a particular billing cycle."
    type: number
    sql: ${TABLE}.access_amt ;;
  }
  dimension: acct_access_amt {
    label: "This is the total amount of access granted to an account."
    description: "This numeric field represents the cumulative monetary value of all services (e.g., data, voice, messaging) that have been consumed or utilized by all individuals associated with a particular account. It provides a comprehensive view of overall account usage in terms of cost."
    type: number
    sql: ${TABLE}.acct_access_amt ;;
  }
  dimension: acct_data_access_amt {
    label: "This is the amount of data access that was charged to the subscriber's account."
    description: "This numeric field specifies the monetary cost exclusively associated with the data services that the subscriber has used and been billed for on their account. It helps to quantify the financial impact of data consumption."
    type: number
    sql: ${TABLE}.acct_data_access_amt ;;
  }
  dimension: acct_fraction {
    label: "This is the fraction of the account that has been used up by the subscriber."
    description: "This numeric field indicates the proportion or percentage of the total allocated resources or services within the subscriber's account that has been consumed or utilized."
    type: number
    sql: ${TABLE}.acct_fraction ;;
  }
  dimension: acct_num {
    label: "This is the account number associated with the subscriber's account."
    description: "This alphanumeric identifier uniquely identifies the subscriber's primary service account. It serves as a fundamental key for retrieving all subscriber-related information and transactions."
    type: string
    sql: ${TABLE}.acct_num ;;
  }
  dimension: acct_pricing_grp {
    label: "This is the pricing group for the subscriber account."
    description: "This categorical field classifies the subscriber's account into specific pricing tiers or groups, which determines the billing structure, rates, and bundled services applicable to their subscription."
    type: string
    sql: ${TABLE}.acct_pricing_grp ;;
  }
  dimension: acct_voice_access_amt {
    label: "This is the amount of access to voice services that was granted to the subscriber's account."
    description: "This numeric field specifies the monetary value of voice communication services that have been provided or allotted to a subscriber's account for their usage. It reflects the granted allowance in financial terms."
    type: number
    sql: ${TABLE}.acct_voice_access_amt ;;
  }
  dimension: area_cd {
    label: "This is the area code associated with the subscriber's account."
    description: "This numeric code indicates the geographical area linked to the subscriber's account, often corresponding to the primary billing or service address. It is useful for regional analysis."
    type: string
    sql: ${TABLE}.area_cd ;;
  }
  dimension: area_desc {
    label: "This is the area where the subscriber's account is located."
    description: "This text field provides a descriptive name for the geographical area where the subscriber's account is primarily based, offering a human-readable context for location-based analysis."
    type: string
    sql: ${TABLE}.area_desc ;;
  }
  dimension: bgid {
    label: "This is the Business Group ID for the subscriber account."
    description: "This alphanumeric identifier uniquely identifies the specific business group or organizational entity to which a subscriber's account belongs. It is critical for managing corporate or multi-account relationships."
    type: string
    sql: ${TABLE}.bgid ;;
  }
  dimension: bgid_source {
    label: "This is the source of the billing group identifier (BGID)."
    description: "This field indicates the system, database, or origin point from which the Business Group ID (BGID) for the subscriber's account was derived or registered. It helps in understanding data lineage and consistency."
    type: string
    sql: ${TABLE}.bgid_source ;;
  }
  dimension: birth_year {
    label: "This is the birth year of the subscriber."
    description: "This numeric field records the year in which the primary subscriber was born. It can be used for demographic analysis and age-based segmentation of the customer base."
    type: number
    sql: ${TABLE}.birth_year ;;
  }
  dimension: bonus_data_allow {
    label: "This is the amount of bonus data allowance available to the subscriber."
    description: "This numeric field quantifies any additional, complimentary data volume (e.g., in GB or MB) that has been provided to the subscriber as a promotional incentive or extra benefit."
    type: string
    sql: ${TABLE}.bonus_data_allow ;;
  }
  dimension: boost_data_allow {
    label: "This is the amount of data that can be boosted in the subscriber's account."
    description: "This numeric field specifies the dedicated data volume (e.g., in GB or MB) that a subscriber is permitted to temporarily increase or 'boost' within their account, often for enhanced performance."
    type: string
    sql: ${TABLE}.boost_data_allow ;;
  }
  dimension: carryover_data_allow {
    label: "This is the amount of data that can be carried over from one month to another."
    description: "This numeric field indicates the volume of unused data (e.g., in GB or MB) from a previous billing cycle that a subscriber is allowed to transfer and use in their current cycle."
    type: string
    sql: ${TABLE}.carryover_data_allow ;;
  }
  dimension: channel_type {
    label: "This is the type of channel used to access the account."
    description: "This categorical field describes the specific medium or method through which the subscriber interacts with services or manages their account (e.g., online, retail store, call center)."
    type: string
    sql: ${TABLE}.channel_type ;;
  }
  dimension: coe_data_pplan_access_amt {
    label: "This is the amount of data access that was granted to the subscriber under their price plan."
    description: "This numeric field specifies the monetary value of data services that are explicitly included or covered by the subscriber's chosen price plan. It helps identify the value of the planned data allowance."
    type: number
    sql: ${TABLE}.coe_data_pplan_access_amt ;;
  }
  dimension: coe_pplan_class_desc {
    label: "This is the class description for the customer's price plan, which includes the price they pay as well as the free minute allowances and data allowances, as well as one or more SFOs."
    description: "This comprehensive text field provides a detailed description of the overarching category or classification of the subscriber's price plan, outlining its core components like cost, voice minutes, data, and service features (SFOs)."
    type: string
    sql: ${TABLE}.coe_pplan_class_desc ;;
  }
  dimension: coe_pplan_ctgry_desc {
    label: "This is the category description for the customer's price plan, which includes the price they pay as well as free minute and data allowances, and one or more SFOs (Service Fee Options)."
    description: "This text field provides a descriptive overview of the broader category of the subscriber's price plan, detailing the financial commitment, included voice and data allowances, and any associated Service Fee Options (SFOs)."
    type: string
    sql: ${TABLE}.coe_pplan_ctgry_desc ;;
  }
  dimension: coe_pplan_group {
    label: "This is the grouping of the customer's price plan, which includes the price they pay as well as the free minute allowances and data allowances, as well as one or more SFOs."
    description: "This categorical field indicates a logical aggregation or classification of the subscriber's price plan, allowing for analysis based on common features such as pricing tiers, bundled allowances, and included Service Fee Options (SFOs)."
    type: string
    sql: ${TABLE}.coe_pplan_group ;;
  }
  dimension: coe_pplan_segmt_desc {
    label: "This is the segment description for the customer's price plan, which includes the price he pays as well as the free minute allowances and data allowances, as well as one or more SFOs."
    description: "This text field describes the specific market segment or tier that the subscriber's price plan belongs to, detailing the associated cost, free voice minutes, data allowances, and any included Service Fee Options (SFOs)."
    type: string
    sql: ${TABLE}.coe_pplan_segmt_desc ;;
  }
  dimension: coe_pplan_service_type_desc {
    label: "This is the service type description for the customer's price plan, which includes the price he pays as well as the free minute allowances and data allowances, as well as one or more SFOs."
    description: "This text field describes the overarching type of service encompassed by the subscriber's price plan (e.g., mobile, internet, bundled), detailing the associated costs, voice minutes, data allowances, and any included Service Fee Options (SFOs)."
    type: string
    sql: ${TABLE}.coe_pplan_service_type_desc ;;
  }
  dimension: coe_pplan_sub_type_desc {
    label: "This is the subscriber type for the price plan."
    description: "This categorical field classifies the subscriber's type as it pertains to the specific price plan they are on (e.g., 'Individual', 'Business', 'Family')."
    type: string
    sql: ${TABLE}.coe_pplan_sub_type_desc ;;
  }
  dimension: coe_pplan_type_desc {
    label: "This is the type of price plan that the customer has subscribed to."
    description: "This text field provides a general description of the broad category or kind of price plan the subscriber is currently subscribed to, offering a high-level overview of their service tier."
    type: string
    sql: ${TABLE}.coe_pplan_type_desc ;;
  }
  dimension: coe_prod_type_cd {
    label: "This is the product type code for the customer's account."
    description: "This categorical code identifies the specific type of product (e.g., smartphone, tablet, hotspot) that is associated with the subscriber's account."
    type: string
    sql: ${TABLE}.coe_prod_type_cd ;;
  }
  dimension: coe_voice_pplan_access_amt {
    label: "This is the amount of access to voice service under the customer's price plan."
    description: "This numeric field specifies the monetary value of voice services that are explicitly included or covered by the subscriber's chosen price plan. It quantifies the planned allowance for voice calls."
    type: number
    sql: ${TABLE}.coe_voice_pplan_access_amt ;;
  }
  dimension: cro_restd_erp_cust_sub_segmt_cd {
    label: "This is the customer segment code for the customer relationship management (CRM) system."
    description: "This categorical code defines a specific sub-segment of the subscriber base as categorized within the CRM (Customer Relationship Management) system, often used for targeted marketing and service strategies."
    type: string
    sql: ${TABLE}.cro_restd_erp_cust_sub_segmt_cd ;;
  }
  dimension: cro_restd_segmt_cd {
    label: "This is the code indicating whether the customer's account has been restored after being closed or disconnected."
    description: "This categorical code indicates the status of an account that has been reactivated or re-enabled after a period of closure or disconnection, tracking customer retention efforts."
    type: string
    sql: ${TABLE}.cro_restd_segmt_cd ;;
  }
  dimension: curr_contract_term {
    label: "This is the current contract term for the subscriber's account."
    description: "This numeric field indicates the remaining duration, typically in months, of the active service contract for the subscriber's account. It helps in tracking contract expiration dates."
    type: string
    sql: ${TABLE}.curr_contract_term ;;
  }
  dimension: cust_id {
    label: "This is the customer ID associated with the account."
    description: "This alphanumeric identifier uniquely identifies the primary customer who owns or is responsible for the account. It serves as a fundamental key for customer data management."
    type: string
    sql: ${TABLE}.cust_id ;;
  }
  dimension: cust_line_seq_id {
    label: "This is the sequence number of the customer line in the subscriber's account."
    description: "This numeric identifier indicates the specific order or position of a particular service line within a subscriber's multi-line account. It helps in distinguishing individual lines."
    type: string
    sql: ${TABLE}.cust_line_seq_id ;;
  }
  dimension: cust_type_cd {
    label: "This is the customer type code for the subscriber account."
    description: "This categorical code classifies the type of customer associated with the subscriber account (e.g., individual, business, government). It helps in segmenting the customer base for tailored services."
    type: string
    sql: ${TABLE}.cust_type_cd ;;
  }
  dimension: data_access_amt {
    label: "This is the amount of data access charged to the subscriber's account."
    description: "This numeric field quantifies the monetary cost of data services billed to the subscriber's account. It reflects the financial impact of actual data consumption."
    type: number
    sql: ${TABLE}.data_access_amt ;;
  }
  dimension: data_tier {
    label: "This is the data tier for the subscriber's account."
    description: "This categorical field indicates the specific level or tier of data service the subscriber is subscribed to, often corresponding to different speeds, allowances, or features."
    type: string
    sql: ${TABLE}.data_tier ;;
  }
  dimension: device_brand_nm {
    label: "This is the brand name of the device associated with the account."
    description: "This text field provides the commercial brand name of the mobile phone or other device linked to the subscriber's account (e.g., 'Samsung', 'Apple')."
    type: string
    sql: ${TABLE}.device_brand_nm ;;
  }
  dimension: device_generation {
    label: "This is the device generation of the subscriber's account."
    description: "This categorical field indicates the technological generation or version of the device associated with the subscriber's account (e.g., '5G', 'LTE', '4G'). It helps in tracking device modernity."
    type: string
    sql: ${TABLE}.device_generation ;;
  }
  dimension: device_grouping {
    label: "This is a grouping of devices that are associated with the same account."
    description: "This categorical field creates logical clusters or categories of devices that are collectively used by a single subscriber's account, allowing for consolidated analysis of device usage patterns."
    type: string
    sql: ${TABLE}.device_grouping ;;
  }
  dimension: device_prod_nm {
    label: "This is the product name of the device associated with the account."
    description: "This text field provides the specific commercial name of the device model (e.g., 'iPhone 15 Pro', 'Galaxy S24 Ultra') linked to the subscriber's account."
    type: string
    sql: ${TABLE}.device_prod_nm ;;
  }
  dimension: device_type_cd {
    label: "This is the device type code for the subscriber's account."
    description: "This categorical code classifies the general type of device associated with the subscriber's account (e.g., 'Smartphone', 'Tablet', 'Wearable')."
    type: string
    sql: ${TABLE}.device_type_cd ;;
  }
  dimension: duns_loc_num {
    label: "This is the DUNS number associated with the subscriber's account."
    description: "This numeric identifier is a unique nine-digit number assigned by Dun & Bradstreet, identifying a specific business location associated with the subscriber's account. It's primarily used for business accounts."
    type: string
    sql: ${TABLE}.duns_loc_num ;;
  }
  dimension: ecpd_profile_id {
    label: "This is the ECPD profile ID for the subscriber account."
    description: "This alphanumeric identifier refers to the profile ID within the ECPD (Enhanced Customer Profile Database) system, which stores detailed subscriber and account information."
    type: string
    sql: ${TABLE}.ecpd_profile_id ;;
  }
  dimension: edw_edge_qualified_ind {
    label: "Indicates whether the subscriber's account is eligible for EDGE technology."
    description: "This binary indicator (e.g., 'Y'/'N' or 'True'/'False') flags whether the subscriber's account meets the criteria to utilize EDGE (Enhanced Data rates for GSM Evolution) technology, potentially for specific features or plans."
    type: string
    sql: ${TABLE}.edw_edge_qualified_ind ;;
  }
  dimension: ending_customers {
    label: "This is the number of customers who ended their subscriptions at the end of the month."
    description: "This numeric field counts the total number of subscribers who terminated their services or subscriptions by the conclusion of a given month, providing a key metric for churn analysis."
    type: number
    sql: ${TABLE}.ending_customers ;;
  }
  dimension: eqp_device_id {
    label: "This is the device ID associated with the account."
    description: "This unique identifier specifically refers to the equipment device linked to the subscriber's account, allowing for precise tracking of physical hardware assets."
    type: string
    sql: ${TABLE}.eqp_device_id ;;
  }
  dimension: eqp_prod_nm {
    label: "This is the product name of the equipment associated with the account."
    description: "This text field provides the commercial name of the specific equipment item (e.g., 'Verizon Router 6.0', '5G Home Internet Gateway') linked to the subscriber's account."
    type: string
    sql: ${TABLE}.eqp_prod_nm ;;
  }
  dimension: erp_cust_sub_segmt_cd {
    label: "This is the customer segment code for the subscriber in ERP system."
    description: "This categorical code defines a granular subscriber sub-segment as categorized within the ERP (Enterprise Resource Planning) system, often used for financial and operational reporting."
    type: string
    sql: ${TABLE}.erp_cust_sub_segmt_cd ;;
  }
  dimension: erp_dist_chnl_cd {
    label: "This is the ERP distribution channel code."
    description: "This categorical code identifies the specific distribution channel (e.g., retail, online, direct sales) through which the subscriber's service was acquired or managed, as recorded in the ERP system."
    type: string
    sql: ${TABLE}.erp_dist_chnl_cd ;;
  }
  dimension: esn_num {
    label: "This is the Electronic Serial Number (ESN) assigned to each transceiver by the manufacturer."
    description: "This unique alphanumeric identifier is an unchangeable serial number embedded by the manufacturer into a mobile device's transceiver. It's crucial for device identification and activation."
    type: string
    sql: ${TABLE}.esn_num ;;
  }
  dimension: ethnicity_segmt {
    label: "This is the ethnicity segmentation of the subscriber."
    description: "This categorical field classifies the subscriber based on their ethnicity, allowing for demographic analysis and culturally targeted marketing efforts."
    type: string
    sql: ${TABLE}.ethnicity_segmt ;;
  }
  dimension: f1k_ind {
    label: "This is an indicator that indicates whether the subscriber has reached the $1,000 threshold for the year."
    description: "This binary indicator (e.g., 'Y'/'N' or 'True'/'False') flags Fortune 1000 Indicator. Values include Y (Fortune 1000), N (Non-Fortune 1000) and Untagged. Populated based on CUST_ACCT_LINE_SEGMT.SEGMT_VALUE where SEGMT_TYPE_CD = F1K_IND."
    type: string
    sql: ${TABLE}.f1k_ind ;;
  }
  dimension: gift_data_allow {
    label: "This is the amount of data usage that was allowed as a gift to the subscriber."
    description: "This numeric field quantifies the specific volume of data (e.g., in GB or MB) that a subscriber receives as a complimentary allowance due to a gift or promotional offer."
    type: string
    sql: ${TABLE}.gift_data_allow ;;
  }
  dimension: in_contract_term {
    label: "This is the contract term for the subscriber's account."
    description: "This numeric field indicates the remaining duration, typically in months, of the active service contract for the subscriber's account. It helps in tracking contract expiration dates."
    type: string
    sql: ${TABLE}.in_contract_term ;;
  }
  dimension: lang_pref_ind {
    label: "This is the language preference indicator for the subscriber."
    description: "This categorical field indicates the preferred language for communications and interactions associated with the subscriber."
    type: string
    sql: ${TABLE}.lang_pref_ind ;;
  }
  dimension_group: last_upd_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_upd_dt ;;
  }
  dimension: life_stage_segmt {
    label: "This is the life stage segment for the subscriber account."
    description: "This categorical field classifies the subscriber's account based on a demographic or behavioral life stage (e.g., 'Young Professional', 'Family with Children', 'Retiree')."
    type: string
    sql: ${TABLE}.life_stage_segmt ;;
  }
  dimension: line_type_cd {
    label: "This is the type of line associated with the account."
    description: "This categorical code classifies the nature or purpose of an individual service line within a subscriber's account (e.g., 'Primary', 'Secondary', 'Data-only')."
    type: string
    sql: ${TABLE}.line_type_cd ;;
  }
  dimension: loan_num {
    label: "This is the loan number associated with the account."
    description: "This alphanumeric identifier refers to a specific loan agreement that might be linked to the subscriber's account, potentially for device financing or other services."
    type: string
    sql: ${TABLE}.loan_num ;;
  }
  dimension: managed_ind {
    label: "This is an indicator that indicates whether the account is managed by Verizon or not."
    description: "This binary indicator (e.g., 'Y'/'N' or 'True'/'False') flags whether the subscriber's account falls under a specific managed service program or internal management tier by Verizon."
    type: string
    sql: ${TABLE}.managed_ind ;;
  }
  dimension: master_agent_area_cd {
    label: "This is the master agent area code for the subscriber account."
    description: "This numeric code indicates the geographical area associated with the master agent who manages or was responsible for the subscriber's account."
    type: string
    sql: ${TABLE}.master_agent_area_cd ;;
  }
  dimension: master_agent_id {
    label: "This is the ID of the master agent associated with the subscriber account."
    description: "This alphanumeric identifier uniquely identifies the master agent who oversees or is responsible for a group of subscriber accounts."
    type: string
    sql: ${TABLE}.master_agent_id ;;
  }
  dimension: mgd_segmt {
    label: "This is the segmentation value for the subscriber account."
    description: "This categorical field represents a specific segmentation value assigned to the subscriber's account, often used for targeted marketing, service tiering, or internal analysis."
    type: string
    sql: ${TABLE}.mgd_segmt ;;
  }
  dimension: mkt_cd {
    label: "This is the market code for the subscriber account."
    description: "This categorical code broadly identifies the specific market segment or geographical region associated with the subscriber's account."
    type: string
    sql: ${TABLE}.mkt_cd ;;
  }
  dimension: mn_line_ind {
    label: "Y/N Flag indicates if Second Number Plan is present."
    description: "This is an (Y/N) indicator that indicates whether a line is a main or additional line in a customer's account."
    type: string
    sql: ${TABLE}.mn_line_ind ;;
  }
  dimension: mn_prod_nm {
    label: "MN- (Multi Number) Prefix added to PROD_NMs where Second Number Plan is present, ELSE, Original PROD_NM is used."
    description: "This field contains a variety of product names, likely by the manufacturer or in a product database. The entries appear to follow different naming conventions, often including a combination of brand identifiers, model numbers or names, specifications, and sometimes color or size information."
    type: string
    sql: ${TABLE}.mn_prod_nm ;;
  }
  dimension: mnc_ind {
    label: "This is the Mobile Network Code (MNC) associated with the account."
    description: "This column serves as a binary indicator, using 'Y' to denote that the customer is a multinational company and 'N' to indicate that the customer is not."
    type: string
    sql: ${TABLE}.mnc_ind ;;
  }
  dimension: mtn {
    label: "This is the mobile telephone number (MTN) associated with the account."
    description: "This numeric field contains the subscriber's primary mobile telephone number, serving as the unique identifier for their voice and messaging services."
    type: string
    sql: ${TABLE}.mtn ;;
  }
  dimension: odi_ind {
    label: "This is an indicator that indicates whether the account has been flagged as being part of the Open Development Initiative (ODI) program."
    description: "This binary indicator (e.g., 'Y'/'N' or 'True'/'False') flags if the subscriber's account is part of the Open Development Initiative (ODI) program, which might grant special device or service interoperability."
    type: string
    sql: ${TABLE}.odi_ind ;;
  }
  dimension: orig_sor_id {
    label: "This is the original System of Record (SOR) identifier for the account."
    description: "This alphanumeric identifier indicates the initial or primary system from which the subscriber's account data was first originated or recorded. It's crucial for data lineage and reconciliation."
    type: string
    sql: ${TABLE}.orig_sor_id ;;
  }
  dimension: plan_data_allow {
    label: "This is the amount of data access allowed under the subscriber's plan."
    description: "This numeric field quantifies the total volume of data (e.g., in GB or MB) that is included as part of the subscriber's current service plan. It defines the base data allowance."
    type: string
    sql: ${TABLE}.plan_data_allow ;;
  }
  dimension: plan_type {
    label: "This is the type of plan associated with the subscriber account."
    description: "This categorical field broadly describes the kind of service plan the subscriber is subscribed to (e.g., 'Prepaid', 'Postpaid', 'Family Plan')."
    type: string
    sql: ${TABLE}.plan_type ;;
  }
  dimension: pplan_cd {
    label: "This is the code that identifies the customer's price plan, which includes the price they pay as well as the free minute and data allowances, as well as one or more SFOs."
    description: "This unique code specifically identifies the subscriber's detailed price plan, encompassing its cost, included voice minutes, data allowances, and any optional service features (SFOs)."
    type: string
    sql: ${TABLE}.pplan_cd ;;
  }
  dimension: pplan_group {
    label: "This is the grouping of the customer's price plan, which includes the price they pay as well as the free minute and data allowances, as well as one or more SFOs."
    description: "This categorical field classifies the subscriber's price plan into broader groups based on shared characteristics like pricing tiers, bundled allowances (voice, data), and included Service Fee Options (SFOs)."
    type: string
    sql: ${TABLE}.pplan_group ;;
  }
  dimension: pplan_line_acct_cd {
    label: "This is the account code for the subscriber's price plan."
    description: "This code links a specific price plan to an individual subscriber's account, serving as an identifier for the plan applied at the line level."
    type: string
    sql: ${TABLE}.pplan_line_acct_cd ;;
  }
  dimension: pplan_mkt_cd {
    label: "This is the market code that defines the customer's price plan which includes the price he pays as well as the free minute allowances and data allowances, as well as one or more SFOs."
    description: "This categorical code identifies the specific market segment or geographical area to which the subscriber's price plan applies, outlining its cost, included voice minutes, data allowances, and any SFOs."
    type: string
    sql: ${TABLE}.pplan_mkt_cd ;;
  }
  dimension: pplan_service_type_cd {
    label: "This is the service type code for the customer's price plan, which defines the customer's price plan including the price they pay as well as free minute allowances and data allowances, as well as one or more SFOs (Service Features Options)."
    description: "This code classifies the fundamental type of service embodied by the subscriber's price plan, outlining its core components such as pricing, voice minutes, data allowances, and any included Service Features Options (SFOs)."
    type: string
    sql: ${TABLE}.pplan_service_type_cd ;;
  }
  dimension: pplan_share {
    label: "This is the percentage of the subscriber's total account usage that falls under their price plan."
    description: "This numeric field indicates the proportion, expressed as a percentage, of the subscriber's overall account usage that is covered by or falls within their specific price plan allowance."
    type: string
    sql: ${TABLE}.pplan_share ;;
  }
  dimension: prepaid_ind {
    label: "This is an indicator that indicates whether the account is prepaid or not."
    description: "This binary indicator (e.g., 'Y'/'N' or 'True'/'False') flags whether the subscriber's account operates on a prepaid model, where services are paid for in advance."
    type: string
    sql: ${TABLE}.prepaid_ind ;;
  }
  dimension: prod_nm {
    label: "This is the product name associated with the account."
    description: "This text field provides the specific commercial name of the product or service that the subscriber's account is utilizing."
    type: string
    sql: ${TABLE}.prod_nm ;;
  }
  dimension: promo_type {
    label: "This is the type of promotion applied to the account."
    description: "This categorical field broadly describes the kind of promotional offer or discount that has been activated on the subscriber's account (e.g., 'Discount', 'Bundle', 'Free Data')."
    type: string
    sql: ${TABLE}.promo_type ;;
  }
  dimension: region_cd {
    label: "This is the region code for the subscriber's account."
    description: "This categorical code identifies the broad geographical region associated with the subscriber's account, used for high-level regional analysis and planning."
    type: string
    sql: ${TABLE}.region_cd ;;
  }
  dimension: region_desc {
    label: "This is the region where the subscriber's account is located."
    description: "This text field provides a descriptive name for the geographical region where the subscriber's account is primarily based, offering a human-readable context."
    type: string
    sql: ${TABLE}.region_desc ;;
  }
  dimension: rev_gen_ind {
    label: "This is an indicator that indicates whether revenue was generated from the subscriber's account or not."
    description: "This binary indicator (e.g., 'Y'/'N' or 'True'/'False') flags whether the subscriber's account has contributed to the company's financial revenue during a given period."
    type: string
    sql: ${TABLE}.rev_gen_ind ;;
  }
  dimension: rltd_acct_id {
    label: "This is the unique identifier for the subscriber account."
    description: "This alphanumeric identifier uniquely identifies the subscriber's primary service account. It serves as a fundamental key for retrieving all subscriber-related information and transactions."
    type: string
    sql: ${TABLE}.rltd_acct_id ;;
  }
  dimension: rollup_cd {
    label: "This is a code indicating the type of rollup used in the table."
    description: "This categorical code specifies the method or level of data aggregation ('rollup') applied in the table, indicating how data has been summarized or grouped."
    type: string
    sql: ${TABLE}.rollup_cd ;;
  }
  dimension: rpt_pplan_cd {
    label: "This is the code that identifies the customer's price plan, which includes the price they pay as well as free minute and data allowances, and one or more SFOs (Service Fee Options)."
    description: "This unique code identifies the specific price plan the customer is on for reporting purposes, detailing its cost, included voice minutes, data allowances, and any Service Fee Options (SFOs)."
    type: string
    sql: ${TABLE}.rpt_pplan_cd ;;
  }
  dimension: rpt_year {
    label: "This is the year that the record was reported."
    description: "This numeric field indicates the calendar year in which the subscriber's account record or its activity was compiled or included in a report."
    type: number
    sql: ${TABLE}.rpt_year ;;
  }
  dimension: sim_type_cd {
    label: "This is the type of SIM card used by the subscriber."
    description: "This categorical code classifies the physical or functional type of SIM card (Subscriber Identity Module) inserted into the subscriber's device (e.g., 'Standard', 'Micro', 'Nano', 'eSIM')."
    type: string
    sql: ${TABLE}.sim_type_cd ;;
  }
  dimension: sls_outlet_id {
    label: "This is the ID of the sales outlet where the account was accessed."
    description: "This alphanumeric identifier pinpoints the specific physical or virtual sales location (e.g., retail store, online portal) where the subscriber's account was created or serviced."
    type: string
    sql: ${TABLE}.sls_outlet_id ;;
  }
  dimension: sor_id {
    label: "This is the System of Record (SOR) identifier for the account."
    description: "This alphanumeric identifier indicates the primary system from which the subscriber's account data is originated or recorded, serving as a definitive source for data integrity."
    type: string
    sql: ${TABLE}.sor_id ;;
  }
  dimension: sp_acct_fraction {
    label: "This is the fraction of the account that is being used by the Solution Provider (SP) for their direct sales relationships."
    description: "This numeric field indicates the proportion or percentage of the subscriber's account usage that is specifically attributed to or managed by a Solution Provider (SP) for direct sales partnerships."
    type: number
    sql: ${TABLE}.sp_acct_fraction ;;
  }
  dimension: sub_region_cd {
    label: "This is the subscriber region code."
    description: "This categorical code identifies a specific sub-region within a broader geographical region where the subscriber's service is primarily located."
    type: string
    sql: ${TABLE}.sub_region_cd ;;
  }
  dimension: subsidy_amt {
    label: "This is the amount of subsidy that was applied to the subscriber's account."
    description: "This numeric field quantifies the monetary value of any financial assistance or discount (subsidy) applied to the subscriber's account, often related to device purchases or service plans."
    type: number
    sql: ${TABLE}.subsidy_amt ;;
  }
  dimension: tenure {
    label: "This is the length of time that the subscriber has been with Verizon in months."
    description: "This numeric field indicates the total duration, in months, for which the subscriber has maintained an active service relationship with Verizon, reflecting their loyalty."
    type: string
    sql: ${TABLE}.tenure ;;
  }
  dimension: total_data_allow {
    label: "This is the total amount of data allowance for the subscriber's account."
    description: "This numeric field represents the cumulative volume of data (e.g., in GB or MB) that is permitted for the subscriber's account across all sources, including plan, bonus, and carryover allowances."
    type: string
    sql: ${TABLE}.total_data_allow ;;
  }
  dimension: vertical {
    label: "This is the vertical value for the subscriber's account."
    description: "This categorical field represents a business vertical or industry segment to which the subscriber's account belongs, particularly for enterprise or business clients."
    type: string
    sql: ${TABLE}.vertical ;;
  }
  dimension: ves_account_id {
    label: "This is the account ID for Verizon Enterprise Solutions (VES) accounts."
    description: "This alphanumeric identifier uniquely identifies accounts that fall under the Verizon Enterprise Solutions (VES) division, catering specifically to business and large organizational clients."
    type: string
    sql: ${TABLE}.ves_account_id ;;
  }
  dimension: vlc_amt {
    label: "This is the value of the VLCH (Verizon Line Charge) for the subscriber account."
    description: "This numeric field quantifies the monetary value of the Verizon Line Charge (VLCH) applied to the subscriber's account, which is a recurring fee for the service line."
    type: number
    sql: ${TABLE}.vlc_amt ;;
  }
  dimension: voice_access_amt {
    label: "This is the amount of voice access for the subscriber's account."
    description: "This numeric field quantifies the monetary cost incurred for voice communication services (e.g., call minutes) that have been billed to the subscriber's account."
    type: number
    sql: ${TABLE}.voice_access_amt ;;
  }
  dimension: vpc_amt {
    label: "This is the amount charged for Vehicle Power Charger (VPC) usage."
    description: "This numeric field quantifies the monetary cost specifically incurred for the usage of a Vehicle Power Charger (VPC) device or service associated with the subscriber's account."
    type: number
    sql: ${TABLE}.vpc_amt ;;
  }
  dimension: vsn_cust_type_cd {
    label: "This is the customer type code for the subscriber."
    description: "This categorical code classifies the type of subscriber (e.g., 'Individual', 'Business', 'Residential') within the system."
    type: string
    sql: ${TABLE}.vsn_cust_type_cd ;;
  }
  dimension: vz2_segmt_cd {
    label: "This is the segment code for the Verizon subs_sum_fact_v table."
    description: "This categorical code identifies a specific segment or tier within the VZ2, allowing for granular data classification."
    type: string
    sql: ${TABLE}.vz2_segmt_cd ;;
  }
  dimension: vzw_value {
    label: "This is the value of the subscriber's account in VZW dollars."
    description: "Populated based on the CUST_ACCT_LINE_SEGMT.SEGMT_VALUE where SEGMT_TYPE_CD = VZW_VALUE. Values include G (gold), L (low value), N (regular) and Untagged. Segment descriptions can be found in the SEGMENT_VALUE_V table."
    type: string
    sql: ${TABLE}.vzw_value ;;
  }
  dimension_group: rpt_mth {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.rpt_mth ;;
  }

  dimension: composite_primary_key {
    type: string
    primary_key: yes
    sql: concat (${cust_id},'|', ${cust_line_seq_id}, '|', ${rpt_mth_date});;
  }
  measure: subscriptionscount {
    label: "Subscriptions Count"
    type: count
  }
}
