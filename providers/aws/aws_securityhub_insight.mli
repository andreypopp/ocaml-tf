(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filters__aws_account_id

val filters__aws_account_id :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__aws_account_id

type filters__company_name

val filters__company_name :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__company_name

type filters__compliance_status

val filters__compliance_status :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__compliance_status

type filters__confidence

val filters__confidence :
  ?eq:string prop ->
  ?gte:string prop ->
  ?lte:string prop ->
  unit ->
  filters__confidence

type filters__created_at__date_range

val filters__created_at__date_range :
  unit:string prop ->
  value:float prop ->
  unit ->
  filters__created_at__date_range

type filters__created_at

val filters__created_at :
  ?end_:string prop ->
  ?start:string prop ->
  date_range:filters__created_at__date_range list ->
  unit ->
  filters__created_at

type filters__criticality

val filters__criticality :
  ?eq:string prop ->
  ?gte:string prop ->
  ?lte:string prop ->
  unit ->
  filters__criticality

type filters__description

val filters__description :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__description

type filters__finding_provider_fields_confidence

val filters__finding_provider_fields_confidence :
  ?eq:string prop ->
  ?gte:string prop ->
  ?lte:string prop ->
  unit ->
  filters__finding_provider_fields_confidence

type filters__finding_provider_fields_criticality

val filters__finding_provider_fields_criticality :
  ?eq:string prop ->
  ?gte:string prop ->
  ?lte:string prop ->
  unit ->
  filters__finding_provider_fields_criticality

type filters__finding_provider_fields_related_findings_id

val filters__finding_provider_fields_related_findings_id :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__finding_provider_fields_related_findings_id

type filters__finding_provider_fields_related_findings_product_arn

val filters__finding_provider_fields_related_findings_product_arn :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__finding_provider_fields_related_findings_product_arn

type filters__finding_provider_fields_severity_label

val filters__finding_provider_fields_severity_label :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__finding_provider_fields_severity_label

type filters__finding_provider_fields_severity_original

val filters__finding_provider_fields_severity_original :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__finding_provider_fields_severity_original

type filters__finding_provider_fields_types

val filters__finding_provider_fields_types :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__finding_provider_fields_types

type filters__first_observed_at__date_range

val filters__first_observed_at__date_range :
  unit:string prop ->
  value:float prop ->
  unit ->
  filters__first_observed_at__date_range

type filters__first_observed_at

val filters__first_observed_at :
  ?end_:string prop ->
  ?start:string prop ->
  date_range:filters__first_observed_at__date_range list ->
  unit ->
  filters__first_observed_at

type filters__generator_id

val filters__generator_id :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__generator_id

type filters__id

val filters__id :
  comparison:string prop -> value:string prop -> unit -> filters__id

type filters__keyword

val filters__keyword : value:string prop -> unit -> filters__keyword

type filters__last_observed_at__date_range

val filters__last_observed_at__date_range :
  unit:string prop ->
  value:float prop ->
  unit ->
  filters__last_observed_at__date_range

type filters__last_observed_at

val filters__last_observed_at :
  ?end_:string prop ->
  ?start:string prop ->
  date_range:filters__last_observed_at__date_range list ->
  unit ->
  filters__last_observed_at

type filters__malware_name

val filters__malware_name :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__malware_name

type filters__malware_path

val filters__malware_path :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__malware_path

type filters__malware_state

val filters__malware_state :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__malware_state

type filters__malware_type

val filters__malware_type :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__malware_type

type filters__network_destination_domain

val filters__network_destination_domain :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__network_destination_domain

type filters__network_destination_ipv4

val filters__network_destination_ipv4 :
  cidr:string prop -> unit -> filters__network_destination_ipv4

type filters__network_destination_ipv6

val filters__network_destination_ipv6 :
  cidr:string prop -> unit -> filters__network_destination_ipv6

type filters__network_destination_port

val filters__network_destination_port :
  ?eq:string prop ->
  ?gte:string prop ->
  ?lte:string prop ->
  unit ->
  filters__network_destination_port

type filters__network_direction

val filters__network_direction :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__network_direction

type filters__network_protocol

val filters__network_protocol :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__network_protocol

type filters__network_source_domain

val filters__network_source_domain :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__network_source_domain

type filters__network_source_ipv4

val filters__network_source_ipv4 :
  cidr:string prop -> unit -> filters__network_source_ipv4

type filters__network_source_ipv6

val filters__network_source_ipv6 :
  cidr:string prop -> unit -> filters__network_source_ipv6

type filters__network_source_mac

val filters__network_source_mac :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__network_source_mac

type filters__network_source_port

val filters__network_source_port :
  ?eq:string prop ->
  ?gte:string prop ->
  ?lte:string prop ->
  unit ->
  filters__network_source_port

type filters__note_text

val filters__note_text :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__note_text

type filters__note_updated_at__date_range

val filters__note_updated_at__date_range :
  unit:string prop ->
  value:float prop ->
  unit ->
  filters__note_updated_at__date_range

type filters__note_updated_at

val filters__note_updated_at :
  ?end_:string prop ->
  ?start:string prop ->
  date_range:filters__note_updated_at__date_range list ->
  unit ->
  filters__note_updated_at

type filters__note_updated_by

val filters__note_updated_by :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__note_updated_by

type filters__process_launched_at__date_range

val filters__process_launched_at__date_range :
  unit:string prop ->
  value:float prop ->
  unit ->
  filters__process_launched_at__date_range

type filters__process_launched_at

val filters__process_launched_at :
  ?end_:string prop ->
  ?start:string prop ->
  date_range:filters__process_launched_at__date_range list ->
  unit ->
  filters__process_launched_at

type filters__process_name

val filters__process_name :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__process_name

type filters__process_parent_pid

val filters__process_parent_pid :
  ?eq:string prop ->
  ?gte:string prop ->
  ?lte:string prop ->
  unit ->
  filters__process_parent_pid

type filters__process_path

val filters__process_path :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__process_path

type filters__process_pid

val filters__process_pid :
  ?eq:string prop ->
  ?gte:string prop ->
  ?lte:string prop ->
  unit ->
  filters__process_pid

type filters__process_terminated_at__date_range

val filters__process_terminated_at__date_range :
  unit:string prop ->
  value:float prop ->
  unit ->
  filters__process_terminated_at__date_range

type filters__process_terminated_at

val filters__process_terminated_at :
  ?end_:string prop ->
  ?start:string prop ->
  date_range:filters__process_terminated_at__date_range list ->
  unit ->
  filters__process_terminated_at

type filters__product_arn

val filters__product_arn :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__product_arn

type filters__product_fields

val filters__product_fields :
  comparison:string prop ->
  key:string prop ->
  value:string prop ->
  unit ->
  filters__product_fields

type filters__product_name

val filters__product_name :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__product_name

type filters__recommendation_text

val filters__recommendation_text :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__recommendation_text

type filters__record_state

val filters__record_state :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__record_state

type filters__related_findings_id

val filters__related_findings_id :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__related_findings_id

type filters__related_findings_product_arn

val filters__related_findings_product_arn :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__related_findings_product_arn

type filters__resource_aws_ec2_instance_iam_instance_profile_arn

val filters__resource_aws_ec2_instance_iam_instance_profile_arn :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__resource_aws_ec2_instance_iam_instance_profile_arn

type filters__resource_aws_ec2_instance_image_id

val filters__resource_aws_ec2_instance_image_id :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__resource_aws_ec2_instance_image_id

type filters__resource_aws_ec2_instance_ipv4_addresses

val filters__resource_aws_ec2_instance_ipv4_addresses :
  cidr:string prop ->
  unit ->
  filters__resource_aws_ec2_instance_ipv4_addresses

type filters__resource_aws_ec2_instance_ipv6_addresses

val filters__resource_aws_ec2_instance_ipv6_addresses :
  cidr:string prop ->
  unit ->
  filters__resource_aws_ec2_instance_ipv6_addresses

type filters__resource_aws_ec2_instance_key_name

val filters__resource_aws_ec2_instance_key_name :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__resource_aws_ec2_instance_key_name

type filters__resource_aws_ec2_instance_launched_at__date_range

val filters__resource_aws_ec2_instance_launched_at__date_range :
  unit:string prop ->
  value:float prop ->
  unit ->
  filters__resource_aws_ec2_instance_launched_at__date_range

type filters__resource_aws_ec2_instance_launched_at

val filters__resource_aws_ec2_instance_launched_at :
  ?end_:string prop ->
  ?start:string prop ->
  date_range:
    filters__resource_aws_ec2_instance_launched_at__date_range list ->
  unit ->
  filters__resource_aws_ec2_instance_launched_at

type filters__resource_aws_ec2_instance_subnet_id

val filters__resource_aws_ec2_instance_subnet_id :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__resource_aws_ec2_instance_subnet_id

type filters__resource_aws_ec2_instance_type

val filters__resource_aws_ec2_instance_type :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__resource_aws_ec2_instance_type

type filters__resource_aws_ec2_instance_vpc_id

val filters__resource_aws_ec2_instance_vpc_id :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__resource_aws_ec2_instance_vpc_id

type filters__resource_aws_iam_access_key_created_at__date_range

val filters__resource_aws_iam_access_key_created_at__date_range :
  unit:string prop ->
  value:float prop ->
  unit ->
  filters__resource_aws_iam_access_key_created_at__date_range

type filters__resource_aws_iam_access_key_created_at

val filters__resource_aws_iam_access_key_created_at :
  ?end_:string prop ->
  ?start:string prop ->
  date_range:
    filters__resource_aws_iam_access_key_created_at__date_range list ->
  unit ->
  filters__resource_aws_iam_access_key_created_at

type filters__resource_aws_iam_access_key_status

val filters__resource_aws_iam_access_key_status :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__resource_aws_iam_access_key_status

type filters__resource_aws_iam_access_key_user_name

val filters__resource_aws_iam_access_key_user_name :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__resource_aws_iam_access_key_user_name

type filters__resource_aws_s3_bucket_owner_id

val filters__resource_aws_s3_bucket_owner_id :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__resource_aws_s3_bucket_owner_id

type filters__resource_aws_s3_bucket_owner_name

val filters__resource_aws_s3_bucket_owner_name :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__resource_aws_s3_bucket_owner_name

type filters__resource_container_image_id

val filters__resource_container_image_id :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__resource_container_image_id

type filters__resource_container_image_name

val filters__resource_container_image_name :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__resource_container_image_name

type filters__resource_container_launched_at__date_range

val filters__resource_container_launched_at__date_range :
  unit:string prop ->
  value:float prop ->
  unit ->
  filters__resource_container_launched_at__date_range

type filters__resource_container_launched_at

val filters__resource_container_launched_at :
  ?end_:string prop ->
  ?start:string prop ->
  date_range:filters__resource_container_launched_at__date_range list ->
  unit ->
  filters__resource_container_launched_at

type filters__resource_container_name

val filters__resource_container_name :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__resource_container_name

type filters__resource_details_other

val filters__resource_details_other :
  comparison:string prop ->
  key:string prop ->
  value:string prop ->
  unit ->
  filters__resource_details_other

type filters__resource_id

val filters__resource_id :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__resource_id

type filters__resource_partition

val filters__resource_partition :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__resource_partition

type filters__resource_region

val filters__resource_region :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__resource_region

type filters__resource_tags

val filters__resource_tags :
  comparison:string prop ->
  key:string prop ->
  value:string prop ->
  unit ->
  filters__resource_tags

type filters__resource_type

val filters__resource_type :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__resource_type

type filters__severity_label

val filters__severity_label :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__severity_label

type filters__source_url

val filters__source_url :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__source_url

type filters__threat_intel_indicator_category

val filters__threat_intel_indicator_category :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__threat_intel_indicator_category

type filters__threat_intel_indicator_last_observed_at__date_range

val filters__threat_intel_indicator_last_observed_at__date_range :
  unit:string prop ->
  value:float prop ->
  unit ->
  filters__threat_intel_indicator_last_observed_at__date_range

type filters__threat_intel_indicator_last_observed_at

val filters__threat_intel_indicator_last_observed_at :
  ?end_:string prop ->
  ?start:string prop ->
  date_range:
    filters__threat_intel_indicator_last_observed_at__date_range list ->
  unit ->
  filters__threat_intel_indicator_last_observed_at

type filters__threat_intel_indicator_source

val filters__threat_intel_indicator_source :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__threat_intel_indicator_source

type filters__threat_intel_indicator_source_url

val filters__threat_intel_indicator_source_url :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__threat_intel_indicator_source_url

type filters__threat_intel_indicator_type

val filters__threat_intel_indicator_type :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__threat_intel_indicator_type

type filters__threat_intel_indicator_value

val filters__threat_intel_indicator_value :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__threat_intel_indicator_value

type filters__title

val filters__title :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__title

type filters__type

val filters__type :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__type

type filters__updated_at__date_range

val filters__updated_at__date_range :
  unit:string prop ->
  value:float prop ->
  unit ->
  filters__updated_at__date_range

type filters__updated_at

val filters__updated_at :
  ?end_:string prop ->
  ?start:string prop ->
  date_range:filters__updated_at__date_range list ->
  unit ->
  filters__updated_at

type filters__user_defined_values

val filters__user_defined_values :
  comparison:string prop ->
  key:string prop ->
  value:string prop ->
  unit ->
  filters__user_defined_values

type filters__verification_state

val filters__verification_state :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__verification_state

type filters__workflow_status

val filters__workflow_status :
  comparison:string prop ->
  value:string prop ->
  unit ->
  filters__workflow_status

type filters

val filters :
  aws_account_id:filters__aws_account_id list ->
  company_name:filters__company_name list ->
  compliance_status:filters__compliance_status list ->
  confidence:filters__confidence list ->
  created_at:filters__created_at list ->
  criticality:filters__criticality list ->
  description:filters__description list ->
  finding_provider_fields_confidence:
    filters__finding_provider_fields_confidence list ->
  finding_provider_fields_criticality:
    filters__finding_provider_fields_criticality list ->
  finding_provider_fields_related_findings_id:
    filters__finding_provider_fields_related_findings_id list ->
  finding_provider_fields_related_findings_product_arn:
    filters__finding_provider_fields_related_findings_product_arn
    list ->
  finding_provider_fields_severity_label:
    filters__finding_provider_fields_severity_label list ->
  finding_provider_fields_severity_original:
    filters__finding_provider_fields_severity_original list ->
  finding_provider_fields_types:
    filters__finding_provider_fields_types list ->
  first_observed_at:filters__first_observed_at list ->
  generator_id:filters__generator_id list ->
  id:filters__id list ->
  keyword:filters__keyword list ->
  last_observed_at:filters__last_observed_at list ->
  malware_name:filters__malware_name list ->
  malware_path:filters__malware_path list ->
  malware_state:filters__malware_state list ->
  malware_type:filters__malware_type list ->
  network_destination_domain:filters__network_destination_domain list ->
  network_destination_ipv4:filters__network_destination_ipv4 list ->
  network_destination_ipv6:filters__network_destination_ipv6 list ->
  network_destination_port:filters__network_destination_port list ->
  network_direction:filters__network_direction list ->
  network_protocol:filters__network_protocol list ->
  network_source_domain:filters__network_source_domain list ->
  network_source_ipv4:filters__network_source_ipv4 list ->
  network_source_ipv6:filters__network_source_ipv6 list ->
  network_source_mac:filters__network_source_mac list ->
  network_source_port:filters__network_source_port list ->
  note_text:filters__note_text list ->
  note_updated_at:filters__note_updated_at list ->
  note_updated_by:filters__note_updated_by list ->
  process_launched_at:filters__process_launched_at list ->
  process_name:filters__process_name list ->
  process_parent_pid:filters__process_parent_pid list ->
  process_path:filters__process_path list ->
  process_pid:filters__process_pid list ->
  process_terminated_at:filters__process_terminated_at list ->
  product_arn:filters__product_arn list ->
  product_fields:filters__product_fields list ->
  product_name:filters__product_name list ->
  recommendation_text:filters__recommendation_text list ->
  record_state:filters__record_state list ->
  related_findings_id:filters__related_findings_id list ->
  related_findings_product_arn:
    filters__related_findings_product_arn list ->
  resource_aws_ec2_instance_iam_instance_profile_arn:
    filters__resource_aws_ec2_instance_iam_instance_profile_arn list ->
  resource_aws_ec2_instance_image_id:
    filters__resource_aws_ec2_instance_image_id list ->
  resource_aws_ec2_instance_ipv4_addresses:
    filters__resource_aws_ec2_instance_ipv4_addresses list ->
  resource_aws_ec2_instance_ipv6_addresses:
    filters__resource_aws_ec2_instance_ipv6_addresses list ->
  resource_aws_ec2_instance_key_name:
    filters__resource_aws_ec2_instance_key_name list ->
  resource_aws_ec2_instance_launched_at:
    filters__resource_aws_ec2_instance_launched_at list ->
  resource_aws_ec2_instance_subnet_id:
    filters__resource_aws_ec2_instance_subnet_id list ->
  resource_aws_ec2_instance_type:
    filters__resource_aws_ec2_instance_type list ->
  resource_aws_ec2_instance_vpc_id:
    filters__resource_aws_ec2_instance_vpc_id list ->
  resource_aws_iam_access_key_created_at:
    filters__resource_aws_iam_access_key_created_at list ->
  resource_aws_iam_access_key_status:
    filters__resource_aws_iam_access_key_status list ->
  resource_aws_iam_access_key_user_name:
    filters__resource_aws_iam_access_key_user_name list ->
  resource_aws_s3_bucket_owner_id:
    filters__resource_aws_s3_bucket_owner_id list ->
  resource_aws_s3_bucket_owner_name:
    filters__resource_aws_s3_bucket_owner_name list ->
  resource_container_image_id:
    filters__resource_container_image_id list ->
  resource_container_image_name:
    filters__resource_container_image_name list ->
  resource_container_launched_at:
    filters__resource_container_launched_at list ->
  resource_container_name:filters__resource_container_name list ->
  resource_details_other:filters__resource_details_other list ->
  resource_id:filters__resource_id list ->
  resource_partition:filters__resource_partition list ->
  resource_region:filters__resource_region list ->
  resource_tags:filters__resource_tags list ->
  resource_type:filters__resource_type list ->
  severity_label:filters__severity_label list ->
  source_url:filters__source_url list ->
  threat_intel_indicator_category:
    filters__threat_intel_indicator_category list ->
  threat_intel_indicator_last_observed_at:
    filters__threat_intel_indicator_last_observed_at list ->
  threat_intel_indicator_source:
    filters__threat_intel_indicator_source list ->
  threat_intel_indicator_source_url:
    filters__threat_intel_indicator_source_url list ->
  threat_intel_indicator_type:
    filters__threat_intel_indicator_type list ->
  threat_intel_indicator_value:
    filters__threat_intel_indicator_value list ->
  title:filters__title list ->
  type_:filters__type list ->
  updated_at:filters__updated_at list ->
  user_defined_values:filters__user_defined_values list ->
  verification_state:filters__verification_state list ->
  workflow_status:filters__workflow_status list ->
  unit ->
  filters

type aws_securityhub_insight

val aws_securityhub_insight :
  ?id:string prop ->
  group_by_attribute:string prop ->
  name:string prop ->
  filters:filters list ->
  unit ->
  aws_securityhub_insight

val yojson_of_aws_securityhub_insight :
  aws_securityhub_insight -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  group_by_attribute : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  group_by_attribute:string prop ->
  name:string prop ->
  filters:filters list ->
  string ->
  t

val make :
  ?id:string prop ->
  group_by_attribute:string prop ->
  name:string prop ->
  filters:filters list ->
  string ->
  t Tf_core.resource
