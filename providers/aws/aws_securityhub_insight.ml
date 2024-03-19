(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type filters__aws_account_id = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__aws_account_id *)

type filters__company_name = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__company_name *)

type filters__compliance_status = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__compliance_status *)

type filters__confidence = {
  eq : string prop option; [@option]  (** eq *)
  gte : string prop option; [@option]  (** gte *)
  lte : string prop option; [@option]  (** lte *)
}
[@@deriving yojson_of]
(** filters__confidence *)

type filters__created_at__date_range = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__created_at__date_range *)

type filters__created_at = {
  end_ : string prop option; [@option] [@key "end"]  (** end *)
  start : string prop option; [@option]  (** start *)
  date_range : filters__created_at__date_range list;
}
[@@deriving yojson_of]
(** filters__created_at *)

type filters__criticality = {
  eq : string prop option; [@option]  (** eq *)
  gte : string prop option; [@option]  (** gte *)
  lte : string prop option; [@option]  (** lte *)
}
[@@deriving yojson_of]
(** filters__criticality *)

type filters__description = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__description *)

type filters__finding_provider_fields_confidence = {
  eq : string prop option; [@option]  (** eq *)
  gte : string prop option; [@option]  (** gte *)
  lte : string prop option; [@option]  (** lte *)
}
[@@deriving yojson_of]
(** filters__finding_provider_fields_confidence *)

type filters__finding_provider_fields_criticality = {
  eq : string prop option; [@option]  (** eq *)
  gte : string prop option; [@option]  (** gte *)
  lte : string prop option; [@option]  (** lte *)
}
[@@deriving yojson_of]
(** filters__finding_provider_fields_criticality *)

type filters__finding_provider_fields_related_findings_id = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__finding_provider_fields_related_findings_id *)

type filters__finding_provider_fields_related_findings_product_arn = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__finding_provider_fields_related_findings_product_arn *)

type filters__finding_provider_fields_severity_label = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__finding_provider_fields_severity_label *)

type filters__finding_provider_fields_severity_original = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__finding_provider_fields_severity_original *)

type filters__finding_provider_fields_types = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__finding_provider_fields_types *)

type filters__first_observed_at__date_range = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__first_observed_at__date_range *)

type filters__first_observed_at = {
  end_ : string prop option; [@option] [@key "end"]  (** end *)
  start : string prop option; [@option]  (** start *)
  date_range : filters__first_observed_at__date_range list;
}
[@@deriving yojson_of]
(** filters__first_observed_at *)

type filters__generator_id = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__generator_id *)

type filters__id = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__id *)

type filters__keyword = { value : string prop  (** value *) }
[@@deriving yojson_of]
(** filters__keyword *)

type filters__last_observed_at__date_range = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__last_observed_at__date_range *)

type filters__last_observed_at = {
  end_ : string prop option; [@option] [@key "end"]  (** end *)
  start : string prop option; [@option]  (** start *)
  date_range : filters__last_observed_at__date_range list;
}
[@@deriving yojson_of]
(** filters__last_observed_at *)

type filters__malware_name = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__malware_name *)

type filters__malware_path = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__malware_path *)

type filters__malware_state = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__malware_state *)

type filters__malware_type = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__malware_type *)

type filters__network_destination_domain = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__network_destination_domain *)

type filters__network_destination_ipv4 = {
  cidr : string prop;  (** cidr *)
}
[@@deriving yojson_of]
(** filters__network_destination_ipv4 *)

type filters__network_destination_ipv6 = {
  cidr : string prop;  (** cidr *)
}
[@@deriving yojson_of]
(** filters__network_destination_ipv6 *)

type filters__network_destination_port = {
  eq : string prop option; [@option]  (** eq *)
  gte : string prop option; [@option]  (** gte *)
  lte : string prop option; [@option]  (** lte *)
}
[@@deriving yojson_of]
(** filters__network_destination_port *)

type filters__network_direction = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__network_direction *)

type filters__network_protocol = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__network_protocol *)

type filters__network_source_domain = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__network_source_domain *)

type filters__network_source_ipv4 = {
  cidr : string prop;  (** cidr *)
}
[@@deriving yojson_of]
(** filters__network_source_ipv4 *)

type filters__network_source_ipv6 = {
  cidr : string prop;  (** cidr *)
}
[@@deriving yojson_of]
(** filters__network_source_ipv6 *)

type filters__network_source_mac = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__network_source_mac *)

type filters__network_source_port = {
  eq : string prop option; [@option]  (** eq *)
  gte : string prop option; [@option]  (** gte *)
  lte : string prop option; [@option]  (** lte *)
}
[@@deriving yojson_of]
(** filters__network_source_port *)

type filters__note_text = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__note_text *)

type filters__note_updated_at__date_range = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__note_updated_at__date_range *)

type filters__note_updated_at = {
  end_ : string prop option; [@option] [@key "end"]  (** end *)
  start : string prop option; [@option]  (** start *)
  date_range : filters__note_updated_at__date_range list;
}
[@@deriving yojson_of]
(** filters__note_updated_at *)

type filters__note_updated_by = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__note_updated_by *)

type filters__process_launched_at__date_range = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__process_launched_at__date_range *)

type filters__process_launched_at = {
  end_ : string prop option; [@option] [@key "end"]  (** end *)
  start : string prop option; [@option]  (** start *)
  date_range : filters__process_launched_at__date_range list;
}
[@@deriving yojson_of]
(** filters__process_launched_at *)

type filters__process_name = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__process_name *)

type filters__process_parent_pid = {
  eq : string prop option; [@option]  (** eq *)
  gte : string prop option; [@option]  (** gte *)
  lte : string prop option; [@option]  (** lte *)
}
[@@deriving yojson_of]
(** filters__process_parent_pid *)

type filters__process_path = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__process_path *)

type filters__process_pid = {
  eq : string prop option; [@option]  (** eq *)
  gte : string prop option; [@option]  (** gte *)
  lte : string prop option; [@option]  (** lte *)
}
[@@deriving yojson_of]
(** filters__process_pid *)

type filters__process_terminated_at__date_range = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__process_terminated_at__date_range *)

type filters__process_terminated_at = {
  end_ : string prop option; [@option] [@key "end"]  (** end *)
  start : string prop option; [@option]  (** start *)
  date_range : filters__process_terminated_at__date_range list;
}
[@@deriving yojson_of]
(** filters__process_terminated_at *)

type filters__product_arn = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__product_arn *)

type filters__product_fields = {
  comparison : string prop;  (** comparison *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__product_fields *)

type filters__product_name = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__product_name *)

type filters__recommendation_text = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__recommendation_text *)

type filters__record_state = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__record_state *)

type filters__related_findings_id = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__related_findings_id *)

type filters__related_findings_product_arn = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__related_findings_product_arn *)

type filters__resource_aws_ec2_instance_iam_instance_profile_arn = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__resource_aws_ec2_instance_iam_instance_profile_arn *)

type filters__resource_aws_ec2_instance_image_id = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__resource_aws_ec2_instance_image_id *)

type filters__resource_aws_ec2_instance_ipv4_addresses = {
  cidr : string prop;  (** cidr *)
}
[@@deriving yojson_of]
(** filters__resource_aws_ec2_instance_ipv4_addresses *)

type filters__resource_aws_ec2_instance_ipv6_addresses = {
  cidr : string prop;  (** cidr *)
}
[@@deriving yojson_of]
(** filters__resource_aws_ec2_instance_ipv6_addresses *)

type filters__resource_aws_ec2_instance_key_name = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__resource_aws_ec2_instance_key_name *)

type filters__resource_aws_ec2_instance_launched_at__date_range = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__resource_aws_ec2_instance_launched_at__date_range *)

type filters__resource_aws_ec2_instance_launched_at = {
  end_ : string prop option; [@option] [@key "end"]  (** end *)
  start : string prop option; [@option]  (** start *)
  date_range :
    filters__resource_aws_ec2_instance_launched_at__date_range list;
}
[@@deriving yojson_of]
(** filters__resource_aws_ec2_instance_launched_at *)

type filters__resource_aws_ec2_instance_subnet_id = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__resource_aws_ec2_instance_subnet_id *)

type filters__resource_aws_ec2_instance_type = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__resource_aws_ec2_instance_type *)

type filters__resource_aws_ec2_instance_vpc_id = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__resource_aws_ec2_instance_vpc_id *)

type filters__resource_aws_iam_access_key_created_at__date_range = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__resource_aws_iam_access_key_created_at__date_range *)

type filters__resource_aws_iam_access_key_created_at = {
  end_ : string prop option; [@option] [@key "end"]  (** end *)
  start : string prop option; [@option]  (** start *)
  date_range :
    filters__resource_aws_iam_access_key_created_at__date_range list;
}
[@@deriving yojson_of]
(** filters__resource_aws_iam_access_key_created_at *)

type filters__resource_aws_iam_access_key_status = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__resource_aws_iam_access_key_status *)

type filters__resource_aws_iam_access_key_user_name = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__resource_aws_iam_access_key_user_name *)

type filters__resource_aws_s3_bucket_owner_id = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__resource_aws_s3_bucket_owner_id *)

type filters__resource_aws_s3_bucket_owner_name = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__resource_aws_s3_bucket_owner_name *)

type filters__resource_container_image_id = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__resource_container_image_id *)

type filters__resource_container_image_name = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__resource_container_image_name *)

type filters__resource_container_launched_at__date_range = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__resource_container_launched_at__date_range *)

type filters__resource_container_launched_at = {
  end_ : string prop option; [@option] [@key "end"]  (** end *)
  start : string prop option; [@option]  (** start *)
  date_range :
    filters__resource_container_launched_at__date_range list;
}
[@@deriving yojson_of]
(** filters__resource_container_launched_at *)

type filters__resource_container_name = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__resource_container_name *)

type filters__resource_details_other = {
  comparison : string prop;  (** comparison *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__resource_details_other *)

type filters__resource_id = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__resource_id *)

type filters__resource_partition = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__resource_partition *)

type filters__resource_region = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__resource_region *)

type filters__resource_tags = {
  comparison : string prop;  (** comparison *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__resource_tags *)

type filters__resource_type = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__resource_type *)

type filters__severity_label = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__severity_label *)

type filters__source_url = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__source_url *)

type filters__threat_intel_indicator_category = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__threat_intel_indicator_category *)

type filters__threat_intel_indicator_last_observed_at__date_range = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__threat_intel_indicator_last_observed_at__date_range *)

type filters__threat_intel_indicator_last_observed_at = {
  end_ : string prop option; [@option] [@key "end"]  (** end *)
  start : string prop option; [@option]  (** start *)
  date_range :
    filters__threat_intel_indicator_last_observed_at__date_range list;
}
[@@deriving yojson_of]
(** filters__threat_intel_indicator_last_observed_at *)

type filters__threat_intel_indicator_source = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__threat_intel_indicator_source *)

type filters__threat_intel_indicator_source_url = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__threat_intel_indicator_source_url *)

type filters__threat_intel_indicator_type = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__threat_intel_indicator_type *)

type filters__threat_intel_indicator_value = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__threat_intel_indicator_value *)

type filters__title = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__title *)

type filters__type = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__type *)

type filters__updated_at__date_range = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__updated_at__date_range *)

type filters__updated_at = {
  end_ : string prop option; [@option] [@key "end"]  (** end *)
  start : string prop option; [@option]  (** start *)
  date_range : filters__updated_at__date_range list;
}
[@@deriving yojson_of]
(** filters__updated_at *)

type filters__user_defined_values = {
  comparison : string prop;  (** comparison *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__user_defined_values *)

type filters__verification_state = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__verification_state *)

type filters__workflow_status = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** filters__workflow_status *)

type filters = {
  aws_account_id : filters__aws_account_id list;
  company_name : filters__company_name list;
  compliance_status : filters__compliance_status list;
  confidence : filters__confidence list;
  created_at : filters__created_at list;
  criticality : filters__criticality list;
  description : filters__description list;
  finding_provider_fields_confidence :
    filters__finding_provider_fields_confidence list;
  finding_provider_fields_criticality :
    filters__finding_provider_fields_criticality list;
  finding_provider_fields_related_findings_id :
    filters__finding_provider_fields_related_findings_id list;
  finding_provider_fields_related_findings_product_arn :
    filters__finding_provider_fields_related_findings_product_arn
    list;
  finding_provider_fields_severity_label :
    filters__finding_provider_fields_severity_label list;
  finding_provider_fields_severity_original :
    filters__finding_provider_fields_severity_original list;
  finding_provider_fields_types :
    filters__finding_provider_fields_types list;
  first_observed_at : filters__first_observed_at list;
  generator_id : filters__generator_id list;
  id : filters__id list;
  keyword : filters__keyword list;
  last_observed_at : filters__last_observed_at list;
  malware_name : filters__malware_name list;
  malware_path : filters__malware_path list;
  malware_state : filters__malware_state list;
  malware_type : filters__malware_type list;
  network_destination_domain :
    filters__network_destination_domain list;
  network_destination_ipv4 : filters__network_destination_ipv4 list;
  network_destination_ipv6 : filters__network_destination_ipv6 list;
  network_destination_port : filters__network_destination_port list;
  network_direction : filters__network_direction list;
  network_protocol : filters__network_protocol list;
  network_source_domain : filters__network_source_domain list;
  network_source_ipv4 : filters__network_source_ipv4 list;
  network_source_ipv6 : filters__network_source_ipv6 list;
  network_source_mac : filters__network_source_mac list;
  network_source_port : filters__network_source_port list;
  note_text : filters__note_text list;
  note_updated_at : filters__note_updated_at list;
  note_updated_by : filters__note_updated_by list;
  process_launched_at : filters__process_launched_at list;
  process_name : filters__process_name list;
  process_parent_pid : filters__process_parent_pid list;
  process_path : filters__process_path list;
  process_pid : filters__process_pid list;
  process_terminated_at : filters__process_terminated_at list;
  product_arn : filters__product_arn list;
  product_fields : filters__product_fields list;
  product_name : filters__product_name list;
  recommendation_text : filters__recommendation_text list;
  record_state : filters__record_state list;
  related_findings_id : filters__related_findings_id list;
  related_findings_product_arn :
    filters__related_findings_product_arn list;
  resource_aws_ec2_instance_iam_instance_profile_arn :
    filters__resource_aws_ec2_instance_iam_instance_profile_arn list;
  resource_aws_ec2_instance_image_id :
    filters__resource_aws_ec2_instance_image_id list;
  resource_aws_ec2_instance_ipv4_addresses :
    filters__resource_aws_ec2_instance_ipv4_addresses list;
  resource_aws_ec2_instance_ipv6_addresses :
    filters__resource_aws_ec2_instance_ipv6_addresses list;
  resource_aws_ec2_instance_key_name :
    filters__resource_aws_ec2_instance_key_name list;
  resource_aws_ec2_instance_launched_at :
    filters__resource_aws_ec2_instance_launched_at list;
  resource_aws_ec2_instance_subnet_id :
    filters__resource_aws_ec2_instance_subnet_id list;
  resource_aws_ec2_instance_type :
    filters__resource_aws_ec2_instance_type list;
  resource_aws_ec2_instance_vpc_id :
    filters__resource_aws_ec2_instance_vpc_id list;
  resource_aws_iam_access_key_created_at :
    filters__resource_aws_iam_access_key_created_at list;
  resource_aws_iam_access_key_status :
    filters__resource_aws_iam_access_key_status list;
  resource_aws_iam_access_key_user_name :
    filters__resource_aws_iam_access_key_user_name list;
  resource_aws_s3_bucket_owner_id :
    filters__resource_aws_s3_bucket_owner_id list;
  resource_aws_s3_bucket_owner_name :
    filters__resource_aws_s3_bucket_owner_name list;
  resource_container_image_id :
    filters__resource_container_image_id list;
  resource_container_image_name :
    filters__resource_container_image_name list;
  resource_container_launched_at :
    filters__resource_container_launched_at list;
  resource_container_name : filters__resource_container_name list;
  resource_details_other : filters__resource_details_other list;
  resource_id : filters__resource_id list;
  resource_partition : filters__resource_partition list;
  resource_region : filters__resource_region list;
  resource_tags : filters__resource_tags list;
  resource_type : filters__resource_type list;
  severity_label : filters__severity_label list;
  source_url : filters__source_url list;
  threat_intel_indicator_category :
    filters__threat_intel_indicator_category list;
  threat_intel_indicator_last_observed_at :
    filters__threat_intel_indicator_last_observed_at list;
  threat_intel_indicator_source :
    filters__threat_intel_indicator_source list;
  threat_intel_indicator_source_url :
    filters__threat_intel_indicator_source_url list;
  threat_intel_indicator_type :
    filters__threat_intel_indicator_type list;
  threat_intel_indicator_value :
    filters__threat_intel_indicator_value list;
  title : filters__title list;
  type_ : filters__type list;
  updated_at : filters__updated_at list;
  user_defined_values : filters__user_defined_values list;
  verification_state : filters__verification_state list;
  workflow_status : filters__workflow_status list;
}
[@@deriving yojson_of]
(** filters *)

type aws_securityhub_insight = {
  group_by_attribute : string prop;  (** group_by_attribute *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  filters : filters list;
}
[@@deriving yojson_of]
(** aws_securityhub_insight *)

let filters__aws_account_id ~comparison ~value () :
    filters__aws_account_id =
  { comparison; value }

let filters__company_name ~comparison ~value () :
    filters__company_name =
  { comparison; value }

let filters__compliance_status ~comparison ~value () :
    filters__compliance_status =
  { comparison; value }

let filters__confidence ?eq ?gte ?lte () : filters__confidence =
  { eq; gte; lte }

let filters__created_at__date_range ~unit ~value () :
    filters__created_at__date_range =
  { unit; value }

let filters__created_at ?end_ ?start ~date_range () :
    filters__created_at =
  { end_; start; date_range }

let filters__criticality ?eq ?gte ?lte () : filters__criticality =
  { eq; gte; lte }

let filters__description ~comparison ~value () : filters__description
    =
  { comparison; value }

let filters__finding_provider_fields_confidence ?eq ?gte ?lte () :
    filters__finding_provider_fields_confidence =
  { eq; gte; lte }

let filters__finding_provider_fields_criticality ?eq ?gte ?lte () :
    filters__finding_provider_fields_criticality =
  { eq; gte; lte }

let filters__finding_provider_fields_related_findings_id ~comparison
    ~value () : filters__finding_provider_fields_related_findings_id
    =
  { comparison; value }

let filters__finding_provider_fields_related_findings_product_arn
    ~comparison ~value () :
    filters__finding_provider_fields_related_findings_product_arn =
  { comparison; value }

let filters__finding_provider_fields_severity_label ~comparison
    ~value () : filters__finding_provider_fields_severity_label =
  { comparison; value }

let filters__finding_provider_fields_severity_original ~comparison
    ~value () : filters__finding_provider_fields_severity_original =
  { comparison; value }

let filters__finding_provider_fields_types ~comparison ~value () :
    filters__finding_provider_fields_types =
  { comparison; value }

let filters__first_observed_at__date_range ~unit ~value () :
    filters__first_observed_at__date_range =
  { unit; value }

let filters__first_observed_at ?end_ ?start ~date_range () :
    filters__first_observed_at =
  { end_; start; date_range }

let filters__generator_id ~comparison ~value () :
    filters__generator_id =
  { comparison; value }

let filters__id ~comparison ~value () : filters__id =
  { comparison; value }

let filters__keyword ~value () : filters__keyword = { value }

let filters__last_observed_at__date_range ~unit ~value () :
    filters__last_observed_at__date_range =
  { unit; value }

let filters__last_observed_at ?end_ ?start ~date_range () :
    filters__last_observed_at =
  { end_; start; date_range }

let filters__malware_name ~comparison ~value () :
    filters__malware_name =
  { comparison; value }

let filters__malware_path ~comparison ~value () :
    filters__malware_path =
  { comparison; value }

let filters__malware_state ~comparison ~value () :
    filters__malware_state =
  { comparison; value }

let filters__malware_type ~comparison ~value () :
    filters__malware_type =
  { comparison; value }

let filters__network_destination_domain ~comparison ~value () :
    filters__network_destination_domain =
  { comparison; value }

let filters__network_destination_ipv4 ~cidr () :
    filters__network_destination_ipv4 =
  { cidr }

let filters__network_destination_ipv6 ~cidr () :
    filters__network_destination_ipv6 =
  { cidr }

let filters__network_destination_port ?eq ?gte ?lte () :
    filters__network_destination_port =
  { eq; gte; lte }

let filters__network_direction ~comparison ~value () :
    filters__network_direction =
  { comparison; value }

let filters__network_protocol ~comparison ~value () :
    filters__network_protocol =
  { comparison; value }

let filters__network_source_domain ~comparison ~value () :
    filters__network_source_domain =
  { comparison; value }

let filters__network_source_ipv4 ~cidr () :
    filters__network_source_ipv4 =
  { cidr }

let filters__network_source_ipv6 ~cidr () :
    filters__network_source_ipv6 =
  { cidr }

let filters__network_source_mac ~comparison ~value () :
    filters__network_source_mac =
  { comparison; value }

let filters__network_source_port ?eq ?gte ?lte () :
    filters__network_source_port =
  { eq; gte; lte }

let filters__note_text ~comparison ~value () : filters__note_text =
  { comparison; value }

let filters__note_updated_at__date_range ~unit ~value () :
    filters__note_updated_at__date_range =
  { unit; value }

let filters__note_updated_at ?end_ ?start ~date_range () :
    filters__note_updated_at =
  { end_; start; date_range }

let filters__note_updated_by ~comparison ~value () :
    filters__note_updated_by =
  { comparison; value }

let filters__process_launched_at__date_range ~unit ~value () :
    filters__process_launched_at__date_range =
  { unit; value }

let filters__process_launched_at ?end_ ?start ~date_range () :
    filters__process_launched_at =
  { end_; start; date_range }

let filters__process_name ~comparison ~value () :
    filters__process_name =
  { comparison; value }

let filters__process_parent_pid ?eq ?gte ?lte () :
    filters__process_parent_pid =
  { eq; gte; lte }

let filters__process_path ~comparison ~value () :
    filters__process_path =
  { comparison; value }

let filters__process_pid ?eq ?gte ?lte () : filters__process_pid =
  { eq; gte; lte }

let filters__process_terminated_at__date_range ~unit ~value () :
    filters__process_terminated_at__date_range =
  { unit; value }

let filters__process_terminated_at ?end_ ?start ~date_range () :
    filters__process_terminated_at =
  { end_; start; date_range }

let filters__product_arn ~comparison ~value () : filters__product_arn
    =
  { comparison; value }

let filters__product_fields ~comparison ~key ~value () :
    filters__product_fields =
  { comparison; key; value }

let filters__product_name ~comparison ~value () :
    filters__product_name =
  { comparison; value }

let filters__recommendation_text ~comparison ~value () :
    filters__recommendation_text =
  { comparison; value }

let filters__record_state ~comparison ~value () :
    filters__record_state =
  { comparison; value }

let filters__related_findings_id ~comparison ~value () :
    filters__related_findings_id =
  { comparison; value }

let filters__related_findings_product_arn ~comparison ~value () :
    filters__related_findings_product_arn =
  { comparison; value }

let filters__resource_aws_ec2_instance_iam_instance_profile_arn
    ~comparison ~value () :
    filters__resource_aws_ec2_instance_iam_instance_profile_arn =
  { comparison; value }

let filters__resource_aws_ec2_instance_image_id ~comparison ~value ()
    : filters__resource_aws_ec2_instance_image_id =
  { comparison; value }

let filters__resource_aws_ec2_instance_ipv4_addresses ~cidr () :
    filters__resource_aws_ec2_instance_ipv4_addresses =
  { cidr }

let filters__resource_aws_ec2_instance_ipv6_addresses ~cidr () :
    filters__resource_aws_ec2_instance_ipv6_addresses =
  { cidr }

let filters__resource_aws_ec2_instance_key_name ~comparison ~value ()
    : filters__resource_aws_ec2_instance_key_name =
  { comparison; value }

let filters__resource_aws_ec2_instance_launched_at__date_range ~unit
    ~value () :
    filters__resource_aws_ec2_instance_launched_at__date_range =
  { unit; value }

let filters__resource_aws_ec2_instance_launched_at ?end_ ?start
    ~date_range () : filters__resource_aws_ec2_instance_launched_at =
  { end_; start; date_range }

let filters__resource_aws_ec2_instance_subnet_id ~comparison ~value
    () : filters__resource_aws_ec2_instance_subnet_id =
  { comparison; value }

let filters__resource_aws_ec2_instance_type ~comparison ~value () :
    filters__resource_aws_ec2_instance_type =
  { comparison; value }

let filters__resource_aws_ec2_instance_vpc_id ~comparison ~value () :
    filters__resource_aws_ec2_instance_vpc_id =
  { comparison; value }

let filters__resource_aws_iam_access_key_created_at__date_range ~unit
    ~value () :
    filters__resource_aws_iam_access_key_created_at__date_range =
  { unit; value }

let filters__resource_aws_iam_access_key_created_at ?end_ ?start
    ~date_range () : filters__resource_aws_iam_access_key_created_at
    =
  { end_; start; date_range }

let filters__resource_aws_iam_access_key_status ~comparison ~value ()
    : filters__resource_aws_iam_access_key_status =
  { comparison; value }

let filters__resource_aws_iam_access_key_user_name ~comparison ~value
    () : filters__resource_aws_iam_access_key_user_name =
  { comparison; value }

let filters__resource_aws_s3_bucket_owner_id ~comparison ~value () :
    filters__resource_aws_s3_bucket_owner_id =
  { comparison; value }

let filters__resource_aws_s3_bucket_owner_name ~comparison ~value ()
    : filters__resource_aws_s3_bucket_owner_name =
  { comparison; value }

let filters__resource_container_image_id ~comparison ~value () :
    filters__resource_container_image_id =
  { comparison; value }

let filters__resource_container_image_name ~comparison ~value () :
    filters__resource_container_image_name =
  { comparison; value }

let filters__resource_container_launched_at__date_range ~unit ~value
    () : filters__resource_container_launched_at__date_range =
  { unit; value }

let filters__resource_container_launched_at ?end_ ?start ~date_range
    () : filters__resource_container_launched_at =
  { end_; start; date_range }

let filters__resource_container_name ~comparison ~value () :
    filters__resource_container_name =
  { comparison; value }

let filters__resource_details_other ~comparison ~key ~value () :
    filters__resource_details_other =
  { comparison; key; value }

let filters__resource_id ~comparison ~value () : filters__resource_id
    =
  { comparison; value }

let filters__resource_partition ~comparison ~value () :
    filters__resource_partition =
  { comparison; value }

let filters__resource_region ~comparison ~value () :
    filters__resource_region =
  { comparison; value }

let filters__resource_tags ~comparison ~key ~value () :
    filters__resource_tags =
  { comparison; key; value }

let filters__resource_type ~comparison ~value () :
    filters__resource_type =
  { comparison; value }

let filters__severity_label ~comparison ~value () :
    filters__severity_label =
  { comparison; value }

let filters__source_url ~comparison ~value () : filters__source_url =
  { comparison; value }

let filters__threat_intel_indicator_category ~comparison ~value () :
    filters__threat_intel_indicator_category =
  { comparison; value }

let filters__threat_intel_indicator_last_observed_at__date_range
    ~unit ~value () :
    filters__threat_intel_indicator_last_observed_at__date_range =
  { unit; value }

let filters__threat_intel_indicator_last_observed_at ?end_ ?start
    ~date_range () : filters__threat_intel_indicator_last_observed_at
    =
  { end_; start; date_range }

let filters__threat_intel_indicator_source ~comparison ~value () :
    filters__threat_intel_indicator_source =
  { comparison; value }

let filters__threat_intel_indicator_source_url ~comparison ~value ()
    : filters__threat_intel_indicator_source_url =
  { comparison; value }

let filters__threat_intel_indicator_type ~comparison ~value () :
    filters__threat_intel_indicator_type =
  { comparison; value }

let filters__threat_intel_indicator_value ~comparison ~value () :
    filters__threat_intel_indicator_value =
  { comparison; value }

let filters__title ~comparison ~value () : filters__title =
  { comparison; value }

let filters__type ~comparison ~value () : filters__type =
  { comparison; value }

let filters__updated_at__date_range ~unit ~value () :
    filters__updated_at__date_range =
  { unit; value }

let filters__updated_at ?end_ ?start ~date_range () :
    filters__updated_at =
  { end_; start; date_range }

let filters__user_defined_values ~comparison ~key ~value () :
    filters__user_defined_values =
  { comparison; key; value }

let filters__verification_state ~comparison ~value () :
    filters__verification_state =
  { comparison; value }

let filters__workflow_status ~comparison ~value () :
    filters__workflow_status =
  { comparison; value }

let filters ~aws_account_id ~company_name ~compliance_status
    ~confidence ~created_at ~criticality ~description
    ~finding_provider_fields_confidence
    ~finding_provider_fields_criticality
    ~finding_provider_fields_related_findings_id
    ~finding_provider_fields_related_findings_product_arn
    ~finding_provider_fields_severity_label
    ~finding_provider_fields_severity_original
    ~finding_provider_fields_types ~first_observed_at ~generator_id
    ~id ~keyword ~last_observed_at ~malware_name ~malware_path
    ~malware_state ~malware_type ~network_destination_domain
    ~network_destination_ipv4 ~network_destination_ipv6
    ~network_destination_port ~network_direction ~network_protocol
    ~network_source_domain ~network_source_ipv4 ~network_source_ipv6
    ~network_source_mac ~network_source_port ~note_text
    ~note_updated_at ~note_updated_by ~process_launched_at
    ~process_name ~process_parent_pid ~process_path ~process_pid
    ~process_terminated_at ~product_arn ~product_fields ~product_name
    ~recommendation_text ~record_state ~related_findings_id
    ~related_findings_product_arn
    ~resource_aws_ec2_instance_iam_instance_profile_arn
    ~resource_aws_ec2_instance_image_id
    ~resource_aws_ec2_instance_ipv4_addresses
    ~resource_aws_ec2_instance_ipv6_addresses
    ~resource_aws_ec2_instance_key_name
    ~resource_aws_ec2_instance_launched_at
    ~resource_aws_ec2_instance_subnet_id
    ~resource_aws_ec2_instance_type ~resource_aws_ec2_instance_vpc_id
    ~resource_aws_iam_access_key_created_at
    ~resource_aws_iam_access_key_status
    ~resource_aws_iam_access_key_user_name
    ~resource_aws_s3_bucket_owner_id
    ~resource_aws_s3_bucket_owner_name ~resource_container_image_id
    ~resource_container_image_name ~resource_container_launched_at
    ~resource_container_name ~resource_details_other ~resource_id
    ~resource_partition ~resource_region ~resource_tags
    ~resource_type ~severity_label ~source_url
    ~threat_intel_indicator_category
    ~threat_intel_indicator_last_observed_at
    ~threat_intel_indicator_source ~threat_intel_indicator_source_url
    ~threat_intel_indicator_type ~threat_intel_indicator_value ~title
    ~type_ ~updated_at ~user_defined_values ~verification_state
    ~workflow_status () : filters =
  {
    aws_account_id;
    company_name;
    compliance_status;
    confidence;
    created_at;
    criticality;
    description;
    finding_provider_fields_confidence;
    finding_provider_fields_criticality;
    finding_provider_fields_related_findings_id;
    finding_provider_fields_related_findings_product_arn;
    finding_provider_fields_severity_label;
    finding_provider_fields_severity_original;
    finding_provider_fields_types;
    first_observed_at;
    generator_id;
    id;
    keyword;
    last_observed_at;
    malware_name;
    malware_path;
    malware_state;
    malware_type;
    network_destination_domain;
    network_destination_ipv4;
    network_destination_ipv6;
    network_destination_port;
    network_direction;
    network_protocol;
    network_source_domain;
    network_source_ipv4;
    network_source_ipv6;
    network_source_mac;
    network_source_port;
    note_text;
    note_updated_at;
    note_updated_by;
    process_launched_at;
    process_name;
    process_parent_pid;
    process_path;
    process_pid;
    process_terminated_at;
    product_arn;
    product_fields;
    product_name;
    recommendation_text;
    record_state;
    related_findings_id;
    related_findings_product_arn;
    resource_aws_ec2_instance_iam_instance_profile_arn;
    resource_aws_ec2_instance_image_id;
    resource_aws_ec2_instance_ipv4_addresses;
    resource_aws_ec2_instance_ipv6_addresses;
    resource_aws_ec2_instance_key_name;
    resource_aws_ec2_instance_launched_at;
    resource_aws_ec2_instance_subnet_id;
    resource_aws_ec2_instance_type;
    resource_aws_ec2_instance_vpc_id;
    resource_aws_iam_access_key_created_at;
    resource_aws_iam_access_key_status;
    resource_aws_iam_access_key_user_name;
    resource_aws_s3_bucket_owner_id;
    resource_aws_s3_bucket_owner_name;
    resource_container_image_id;
    resource_container_image_name;
    resource_container_launched_at;
    resource_container_name;
    resource_details_other;
    resource_id;
    resource_partition;
    resource_region;
    resource_tags;
    resource_type;
    severity_label;
    source_url;
    threat_intel_indicator_category;
    threat_intel_indicator_last_observed_at;
    threat_intel_indicator_source;
    threat_intel_indicator_source_url;
    threat_intel_indicator_type;
    threat_intel_indicator_value;
    title;
    type_;
    updated_at;
    user_defined_values;
    verification_state;
    workflow_status;
  }

let aws_securityhub_insight ?id ~group_by_attribute ~name ~filters ()
    : aws_securityhub_insight =
  { group_by_attribute; id; name; filters }

type t = {
  arn : string prop;
  group_by_attribute : string prop;
  id : string prop;
  name : string prop;
}

let register ?tf_module ?id ~group_by_attribute ~name ~filters
    __resource_id =
  let __resource_type = "aws_securityhub_insight" in
  let __resource =
    aws_securityhub_insight ?id ~group_by_attribute ~name ~filters ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_securityhub_insight __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       group_by_attribute =
         Prop.computed __resource_type __resource_id
           "group_by_attribute";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
