view: churn_sum_fact {
  sql_table_name: `aragosalooker.verizon_autobi.convoiq.churn_sum_fact` ;;

  dimension: acct_num {
    label: "Customer Account Number"
    description: "Unique identifier assigned to each customer's account, used for billing, service management, and tracking customer interactions."
    type: string
    sql: ${TABLE}.acct_num ;;
  }
  dimension: address_1 {
    label: "Address 1 of the nearest store"
    description: "The primary street address line for the retail store or service center geographically closest to the customer."
    type: string
    sql: ${TABLE}.address_1 ;;
  }
  dimension: address_2 {
    label: "Address 2 of the nearest store"
    description: "The secondary street address line (e.g., apartment, suite, floor) for the retail store or service center geographically closest to the customer."
    type: string
    sql: ${TABLE}.address_2 ;;
  }
  dimension: arpu_6month_line_avg {
    label: "Six month average ARPU for line."
    description: "The average revenue generated per user (ARPU) for a specific service line, calculated over the preceding six-month period."
    type: number
    sql: ${TABLE}.arpu_6month_line_avg ;;
  }
  dimension: birth_year {
    label: "Birth year"
    description: "The year in which the customer was born, used for demographic analysis and age-specific offers."
    type: number
    sql: ${TABLE}.birth_year ;;
  }
  dimension: city {
    label: "City of the store"
    description: "The city where the retail store or service center is located."
    type: string
    sql: ${TABLE}.city ;;
  }
  dimension: cma_cd {
    label: "Cellular market area code"
    description: "A code representing the specific Cellular Market Area (CMA), which is a geographic area defined for wireless communication services."
    type: number
    sql: ${TABLE}.cma_cd ;;
  }
  dimension: cma_name {
    label: "Cellular market area name"
    description: "The descriptive name of the Cellular Market Area (CMA), providing a more human-readable identifier for the geographic wireless service zone."
    type: string
    sql: ${TABLE}.cma_name ;;
  }
  dimension: cma_tier_cd {
    label: "Cellular market area tier cd"
    description: "A code indicating the tier or classification of the Cellular Market Area, often based on population density or market importance."
    type: number
    sql: ${TABLE}.cma_tier_cd ;;
  }
  dimension: coe_pplan_service_type_desc {
    label: "Plan service type description"
    description: "A textual description of the type of service associated with the customer's current plan (e.g., Postpaid, Prepaid, Data-only)."
    type: string
  }
  dimension: coe_pplan_sub_type_desc {
    label: "Plan sub type description"
    description: "A more granular description of the customer's plan subtype, providing details beyond the general service type (e.g., Unlimited Talk & Text, 10GB Data)."
    type: string
    sql: ${TABLE}.coe_pplan_sub_type_desc ;;
  }
  dimension: common_fios_customer_category {
    label: "Common Customer Category"
    description: "A classification of the customer based on common retail segmentation, such as 'New Customer', 'Loyalty Program Member', or 'Business Account'."
    type: string
    sql: ${TABLE}.common_fios_customer_category ;;
  }
  dimension: contract_mths_rem {
    label: "Contract months remaining"
    description: "The number of months left until the customer's current service contract agreement expires."
    type: number
    sql: ${TABLE}.contract_mths_rem ;;
  }
  dimension: county {
    label: "County of the store"
    description: "The county where the retail store or service center is located."
    type: string
    sql: ${TABLE}.county ;;
  }
  dimension: curr_contract_term {
    label: "Current Contract term"
    description: "The total duration, typically in months, of the customer's active service contract (e.g., 12 months, 24 months)."
    type: string
    sql: ${TABLE}.curr_contract_term ;;
  }
  dimension: cust_id {
    label: "Customer ID"
    description: "A unique numerical or alphanumeric identifier assigned to each individual customer."
    type: string
    sql: ${TABLE}.cust_id ;;
  }
  dimension: cust_line_seq_id {
    label: "Customer's Line Sequence ID"
    description: "A unique identifier for a specific service line associated with a customer account, used when a customer has multiple lines."
    type: string
    sql: ${TABLE}.cust_line_seq_id ;;
  }
  dimension: cust_type_cd {
    label: "Customer Type code"
    description: "A code representing the type or segment of the customer (e.g., individual, small business, enterprise)."
    type: string
    sql: ${TABLE}.cust_type_cd ;;
  }
  dimension: data_tier {
    label: "Data tier of the subscription plan"
    description: "This field categorizes the primary type of service or data plan a customer is subscribed to. Common values include 'smartphone' (indicating a mobile voice and data plan), 'internet' (referring to fixed-line or home internet services), 'basic' (likely a fundamental or limited service plan), and 'Other Services' (for miscellaneous or uncategorized services). This helps in segmenting customers by their core service usage."
    type: string
    sql: ${TABLE}.data_tier ;;
  }
  dimension: decile_num {
    label: "Decile value calculated for the model"
    description: "A numerical representation (1-10) of the decile into which a customer falls based on a predictive model score."
    type: number
    sql: ${TABLE}.decile_num ;;
  }
  dimension: device_brand_nm {
    label: "Device Brand Name"
    description: "The brand name of the mobile device currently being used by the customer (e.g., Apple, Samsung, Google)."
    type: string
    sql: ${TABLE}.device_brand_nm ;;
  }
  dimension: device_grouping {
    label: "Device Group like Apple/Android/Tablet"
    description: "A categorization of the customer's device into broader groups such as Apple (iOS), Android, or Tablet, for targeted support or marketing."
    type: string
    sql: ${TABLE}.device_grouping ;;
  }
  dimension: disc_reas_desc {
    label: "Disconnect Reason Description"
    description: "A textual description of the reason why a customer disconnected their service, if applicable."
    type: string
    sql: ${TABLE}.disc_reas_desc ;;
  }
  dimension: disconnects {
    label: "Disconnect flag"
    description: "An indicator showing whether the customer has disconnected their service. Disconnects > 0 indicate customer has disconnected. Disconnects = null or Disconnect =0 indicate customer has not disconnected. Disconnects also mean churn"
    type: number
    sql: ${TABLE}.disconnects ;;
  }
  dimension: distance {
    label: "Distance in meters"
    description: "The distance, measured in meters, likely between the customer's location and a point of interest like the nearest store or cell tower."
    type: number
    sql: ${TABLE}.distance ;;
  }
  dimension: district_cd {
    label: "District code"
    description: "A code representing the specific sales or service district to which the customer or store belongs."
    type: string
    sql: ${TABLE}.district_cd ;;
  }
  dimension: district_desc {
    label: "District description"
    description: "The descriptive name of the sales or service district."
    type: string
    sql: ${TABLE}.district_desc ;;
  }
  dimension: dma_cd {
    label: "Designated market area code"
    description: "A code for the Designated Market Area (DMA), which is a geographic region in the United States used for media and marketing purposes."
    type: number
    sql: ${TABLE}.dma_cd ;;
  }
  dimension: dma_name {
    label: "Designated market area name"
    description: "The descriptive name of the Designated Market Area (DMA)."
    type: string
    sql: ${TABLE}.dma_name ;;
  }
  dimension: dma_tier_cd {
    label: "Designated market area tier code"
    description: "A code indicating the tier or classification of the Designated Market Area, often based on market size or demographic characteristics."
    type: number
    sql: ${TABLE}.dma_tier_cd ;;
  }
  dimension: ending_customers {
    label: "Ending Customers"
    description: "The number of customers who have ended their service during the specified period."
    type: number
    sql: ${TABLE}.ending_customers ;;
  }
  dimension: fios_qualified {
    label: "Fios Qualified"
    description: "Indicates whether the customer is qualified for Fios services (1) or not (0)."
    type: number
    sql: ${TABLE}.fios_qualified ;;
  }
  dimension: fwa_ind {
    label: "FWA Indicator"
    description: "Indicates if the customer is part of the FWA program (1) or not (0)."
    type: string
    sql: ${TABLE}.fwa_ind ;;
  }
  dimension: fwa_ord_type_desc {
    label: "FWA Order Type Description"
    description: "Description of the order type for FWA, such as 'New', 'Upgrade', or 'Downgrade'."
    type: string
    sql: ${TABLE}.fwa_ord_type_desc ;;
  }
  dimension: fwa_qualified {
    label: "FWA Qualified"
    description: "Indicates whether the customer is qualified for FWA (Fixed Wireless Access) services (1) or not (0)."
    type: number
    sql: ${TABLE}.fwa_qualified ;;
  }
  dimension: in_contract_term {
    label: "In Contract Term"
    description: "Indicates if the customer is currently in a contract term (1) or not (0)."
    type: string
    sql: ${TABLE}.in_contract_term ;;
  }
  dimension: involuntary_disconnects {
    label: "Involuntary Disconnects"
    description: "The number of involuntary disconnects for the customer, if applicable. involuntary_disconnects > 0 indicate customer has an involuntary disconnect"
    type: number
    sql: ${TABLE}.involuntary_disconnects ;;
  }
  dimension: line_zip_cd {
    label: "Line Zip Code"
    description: "The zip code associated with the customer's service line."
    type: string
    sql: ${TABLE}.line_zip_cd ;;
  }
  dimension: mkt_cd {
    label: "Market Code"
    description: "A code representing the market in which the customer is located or through which they are serviced."
    type: string
    sql: ${TABLE}.mkt_cd ;;
  }
  dimension: mobile_home_grp {
    label: "Mobile Home Group"
    description: "A classification indicating if the customer is part of a mobile home group, which may affect service availability or type.Indicates if it is a standalone connection or a joint connection"
    type: string
    sql: ${TABLE}.mobile_home_grp ;;
  }
  dimension_group: mth {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: date(${TABLE}.mth) ;;
  }
  dimension: mtn {
    label: "Mobile Telephone Number"
    description: "The mobile phone number of the customer, including country code."
    type: string
    sql: ${TABLE}.mtn ;;
  }
  dimension: port_carrier_cd {
    label: "Porting Carrier Code"
    description: "The carrier code to which the customer is porting their number, if applicable."
    type: string
    sql: ${TABLE}.port_carrier_cd ;;
  }
  dimension: port_in_total_post {
    label: "Port In Total Post"
    description: "The total number of ports in to the customer's current carrier, after the porting process."
    type: number
    sql: ${TABLE}.port_in_total_post ;;
  }
  dimension: port_in_total_pre {
    label: "Port In Total Pre"
    description: "The total number of ports in to the customer's previous carrier, before the porting process."
    type: number
    sql: ${TABLE}.port_in_total_pre ;;
  }
  dimension: port_out_total_post {
    label: "Port Out Total Post"
    description: "The total number of ports out from the customer's current carrier, after the porting process."
    type: number
    sql: ${TABLE}.port_out_total_post ;;
  }
  dimension: port_out_total_pre {
    label: "Port Out Total Pre"
    description: "The total number of ports out from the customer's previous carrier, before the porting process."
    type: number
    sql: ${TABLE}.port_out_total_pre ;;
  }
  dimension: pos_location_code {
    label: "Point of Sale Location Code"
    description: "A code representing the specific point of sale location for the customer's transaction, if applicable."
    type: string
    sql: ${TABLE}.pos_location_code ;;
  }
  dimension: prepaid_ind {
    label: "Prepaid Indicator"
    description: "Indicates if the customer's plan is prepaid (1) or postpaid (0)."
    type: string
    sql: ${TABLE}.prepaid_ind ;;
  }
  dimension: primary_driver {
    label: "Primary Driver"
    description: "The main factor or reason for the customer's current plan or service, as determined by the business logic."
    type: string
    sql: ${TABLE}.primary_driver ;;
  }
  dimension: primary_enodeb {
    label: "Primary eNodeB"
    description: "The primary eNodeB (Evolved Node B) serving the customer's connection, relevant for network planning and optimization."
    type: string
    sql: ${TABLE}.primary_enodeb ;;
  }
  dimension: primary_reason {
    label: "Primary Reason"
    description: "The main reason for the customer to disconnect"
    type: string
    sql: ${TABLE}.primary_reason ;;
  }
  dimension: primary_sector {
    label: "Primary Sector"
    description: "The primary sector of the customer's service, which could relate to the type of service or the market segment."
    type: number
    sql: ${TABLE}.primary_sector ;;
  }
  dimension: promo_type {
    label: "Promotion Type"
    description: "The type of promotion applied to the customer's account, if any (e.g., Discount, Bundle, None)."
    type: string
    sql: ${TABLE}.promo_type ;;
  }
  dimension: region_desc {
    label: "Region Description"
    description: "A textual description of the region where the customer is located, which may encompass multiple geographic or administrative areas."
    type: string
    sql: ${TABLE}.region_desc ;;
  }
  dimension: score_centile_fwa {
    label: "Score centile fwa"
    description: "The centile score for the customer based on FWA (Fixed Wireless Access) criteria, used for targeting and analysis."
    type: number
    sql: ${TABLE}.score_centile_fwa ;;
  }
  dimension: score_centile_in_mkt {
    label: "Score centile in mkt"
    description: "The centile score for the customer within the market, used for comparative analysis."
    type: number
    sql: ${TABLE}.score_centile_in_mkt ;;
  }
  dimension: score_centile_po_wk {
    label: "Score centile po wk"
    description: "The centile score for the customer based on port-out likelihood this week, used for retention analysis."
    type: number
    sql: ${TABLE}.score_centile_po_wk ;;
  }
  dimension: score_decile_fwa {
    label: "Score decile fwa"
    description: "The decile score for the customer based on FWA criteria, providing a range from 1 to 10."
    type: number
    sql: ${TABLE}.score_decile_fwa ;;
  }
  dimension: score_decile_in_mkt {
    label: "Score decile in mkt"
    description: "The decile score for the customer within the market, offering a segmented view for analysis."
    type: number
    sql: ${TABLE}.score_decile_in_mkt ;;
  }
  dimension: score_decile_po_wk {
    label: "Score decile po wk"
    description: "The decile score for the customer indicating the likelihood of porting out this week."
    type: number
    sql: ${TABLE}.score_decile_po_wk ;;
  }
  dimension: score_group {
    label: "Score Group"
    description: "A categorical grouping of the customer based on their score, used for segmentation and targeting."
    type: string
    sql: ${TABLE}.score_group ;;
  }
  dimension: score_value {
    label: "Score Value"
    description: "The actual score value assigned to the customer, used for ranking and analysis."
    type: number
    sql: ${TABLE}.score_value ;;
  }
  dimension: score_value_fwa {
    label: "Score Value FWA"
    description: "The score value for the customer based on FWA criteria."
    type: number
    sql: ${TABLE}.score_value_fwa ;;
  }
  dimension: score_value_in_mkt {
    label: "Score Value in MKT"
    description: "The score value for the customer within the market."
    type: number
    sql: ${TABLE}.score_value_in_mkt ;;
  }
  dimension: score_value_po_wk {
    label: "Score Value PO WK"
    description: "The score value indicating the likelihood of porting out this week."
    type: number
    sql: ${TABLE}.score_value_po_wk ;;
  }
  dimension: secondary_driver {
    label: "Secondary Driver"
    description: "The secondary factor or reason for the customer's current plan or service, providing additional context to the primary driver."
    type: string
    sql: ${TABLE}.secondary_driver ;;
  }
  dimension: secondary_reason {
    label: "Secondary Reason"
    description: "An additional reason for the customer's current service or plan, providing further granularity."
    type: string
    sql: ${TABLE}.secondary_reason ;;
  }
  dimension: state {
    label: "State of the store"
    description: "The state where the retail store or service center is located."
    type: string
    sql: ${TABLE}.state ;;
  }
  dimension: tenure {
    label: "Tenure"
    description: "The length of time, typically in months, that the customer has been with the service provider."
    type: string
    sql: ${TABLE}.tenure ;;
  }
  dimension: territory_cd {
    label: "Territory code"
    description: "A code representing the specific territory or region for service delivery and billing."
    type: string
    sql: ${TABLE}.territory_cd ;;
  }
  dimension: territory_desc {
    label: "Territory description"
    description: "The descriptive name of the territory or region, providing insight into the customer's service area."
    type: string
    sql: ${TABLE}.territory_desc ;;
  }
  dimension_group: trans_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.trans_dt ;;
  }
  dimension_group: trans_mth {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.trans_mth ;;
  }
  dimension: voluntary_disconnects {
    label: "Voluntary Disconnects"
    description: "The number of voluntary disconnects for the customer, if applicable.voluntary_disconnects >0 is the number of volunatry disconnects for the customer "
    type: number
    sql: ${TABLE}.voluntary_disconnects ;;
  }
  dimension: vz2_region_cd {
    label: "VZ2 Region Code"
    description: "A code representing the VZ2 region for the customer's service, used for internal tracking and analysis."
    type: string
    sql: ${TABLE}.vz2_region_cd ;;
  }
  dimension: vz2_region_desc {
    label: "VZ2 Region Description"
    description: "The descriptive name of the VZ2 region where the customer is located."
    type: string
    sql: ${TABLE}.vz2_region_desc ;;
  }
  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}.zip_code ;;
  }

  dimension: composite_primary_key {
    type: string
    primary_key: yes
    sql: concat (${cust_id},'|', ${cust_line_seq_id}, '|', ${mth_date});;
    }
  measure: customerbasecount {
    label: "Customer Base count"
    type: count
    drill_fields: [dma_name, cma_name]
  }
}
