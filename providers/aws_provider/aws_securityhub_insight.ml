(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_securityhub_insight__filters__aws_account_id = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__aws_account_id *)

type aws_securityhub_insight__filters__company_name = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__company_name *)

type aws_securityhub_insight__filters__compliance_status = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__compliance_status *)

type aws_securityhub_insight__filters__confidence = {
  eq : string prop option; [@option]  (** eq *)
  gte : string prop option; [@option]  (** gte *)
  lte : string prop option; [@option]  (** lte *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__confidence *)

type aws_securityhub_insight__filters__created_at__date_range = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__created_at__date_range *)

type aws_securityhub_insight__filters__created_at = {
  end_ : string prop option; [@option] [@key "end"]  (** end *)
  start : string prop option; [@option]  (** start *)
  date_range :
    aws_securityhub_insight__filters__created_at__date_range list;
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__created_at *)

type aws_securityhub_insight__filters__criticality = {
  eq : string prop option; [@option]  (** eq *)
  gte : string prop option; [@option]  (** gte *)
  lte : string prop option; [@option]  (** lte *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__criticality *)

type aws_securityhub_insight__filters__description = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__description *)

type aws_securityhub_insight__filters__finding_provider_fields_confidence = {
  eq : string prop option; [@option]  (** eq *)
  gte : string prop option; [@option]  (** gte *)
  lte : string prop option; [@option]  (** lte *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__finding_provider_fields_confidence *)

type aws_securityhub_insight__filters__finding_provider_fields_criticality = {
  eq : string prop option; [@option]  (** eq *)
  gte : string prop option; [@option]  (** gte *)
  lte : string prop option; [@option]  (** lte *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__finding_provider_fields_criticality *)

type aws_securityhub_insight__filters__finding_provider_fields_related_findings_id = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__finding_provider_fields_related_findings_id *)

type aws_securityhub_insight__filters__finding_provider_fields_related_findings_product_arn = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__finding_provider_fields_related_findings_product_arn *)

type aws_securityhub_insight__filters__finding_provider_fields_severity_label = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__finding_provider_fields_severity_label *)

type aws_securityhub_insight__filters__finding_provider_fields_severity_original = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__finding_provider_fields_severity_original *)

type aws_securityhub_insight__filters__finding_provider_fields_types = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__finding_provider_fields_types *)

type aws_securityhub_insight__filters__first_observed_at__date_range = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__first_observed_at__date_range *)

type aws_securityhub_insight__filters__first_observed_at = {
  end_ : string prop option; [@option] [@key "end"]  (** end *)
  start : string prop option; [@option]  (** start *)
  date_range :
    aws_securityhub_insight__filters__first_observed_at__date_range
    list;
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__first_observed_at *)

type aws_securityhub_insight__filters__generator_id = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__generator_id *)

type aws_securityhub_insight__filters__id = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__id *)

type aws_securityhub_insight__filters__keyword = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__keyword *)

type aws_securityhub_insight__filters__last_observed_at__date_range = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__last_observed_at__date_range *)

type aws_securityhub_insight__filters__last_observed_at = {
  end_ : string prop option; [@option] [@key "end"]  (** end *)
  start : string prop option; [@option]  (** start *)
  date_range :
    aws_securityhub_insight__filters__last_observed_at__date_range
    list;
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__last_observed_at *)

type aws_securityhub_insight__filters__malware_name = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__malware_name *)

type aws_securityhub_insight__filters__malware_path = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__malware_path *)

type aws_securityhub_insight__filters__malware_state = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__malware_state *)

type aws_securityhub_insight__filters__malware_type = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__malware_type *)

type aws_securityhub_insight__filters__network_destination_domain = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__network_destination_domain *)

type aws_securityhub_insight__filters__network_destination_ipv4 = {
  cidr : string prop;  (** cidr *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__network_destination_ipv4 *)

type aws_securityhub_insight__filters__network_destination_ipv6 = {
  cidr : string prop;  (** cidr *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__network_destination_ipv6 *)

type aws_securityhub_insight__filters__network_destination_port = {
  eq : string prop option; [@option]  (** eq *)
  gte : string prop option; [@option]  (** gte *)
  lte : string prop option; [@option]  (** lte *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__network_destination_port *)

type aws_securityhub_insight__filters__network_direction = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__network_direction *)

type aws_securityhub_insight__filters__network_protocol = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__network_protocol *)

type aws_securityhub_insight__filters__network_source_domain = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__network_source_domain *)

type aws_securityhub_insight__filters__network_source_ipv4 = {
  cidr : string prop;  (** cidr *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__network_source_ipv4 *)

type aws_securityhub_insight__filters__network_source_ipv6 = {
  cidr : string prop;  (** cidr *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__network_source_ipv6 *)

type aws_securityhub_insight__filters__network_source_mac = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__network_source_mac *)

type aws_securityhub_insight__filters__network_source_port = {
  eq : string prop option; [@option]  (** eq *)
  gte : string prop option; [@option]  (** gte *)
  lte : string prop option; [@option]  (** lte *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__network_source_port *)

type aws_securityhub_insight__filters__note_text = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__note_text *)

type aws_securityhub_insight__filters__note_updated_at__date_range = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__note_updated_at__date_range *)

type aws_securityhub_insight__filters__note_updated_at = {
  end_ : string prop option; [@option] [@key "end"]  (** end *)
  start : string prop option; [@option]  (** start *)
  date_range :
    aws_securityhub_insight__filters__note_updated_at__date_range
    list;
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__note_updated_at *)

type aws_securityhub_insight__filters__note_updated_by = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__note_updated_by *)

type aws_securityhub_insight__filters__process_launched_at__date_range = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__process_launched_at__date_range *)

type aws_securityhub_insight__filters__process_launched_at = {
  end_ : string prop option; [@option] [@key "end"]  (** end *)
  start : string prop option; [@option]  (** start *)
  date_range :
    aws_securityhub_insight__filters__process_launched_at__date_range
    list;
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__process_launched_at *)

type aws_securityhub_insight__filters__process_name = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__process_name *)

type aws_securityhub_insight__filters__process_parent_pid = {
  eq : string prop option; [@option]  (** eq *)
  gte : string prop option; [@option]  (** gte *)
  lte : string prop option; [@option]  (** lte *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__process_parent_pid *)

type aws_securityhub_insight__filters__process_path = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__process_path *)

type aws_securityhub_insight__filters__process_pid = {
  eq : string prop option; [@option]  (** eq *)
  gte : string prop option; [@option]  (** gte *)
  lte : string prop option; [@option]  (** lte *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__process_pid *)

type aws_securityhub_insight__filters__process_terminated_at__date_range = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__process_terminated_at__date_range *)

type aws_securityhub_insight__filters__process_terminated_at = {
  end_ : string prop option; [@option] [@key "end"]  (** end *)
  start : string prop option; [@option]  (** start *)
  date_range :
    aws_securityhub_insight__filters__process_terminated_at__date_range
    list;
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__process_terminated_at *)

type aws_securityhub_insight__filters__product_arn = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__product_arn *)

type aws_securityhub_insight__filters__product_fields = {
  comparison : string prop;  (** comparison *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__product_fields *)

type aws_securityhub_insight__filters__product_name = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__product_name *)

type aws_securityhub_insight__filters__recommendation_text = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__recommendation_text *)

type aws_securityhub_insight__filters__record_state = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__record_state *)

type aws_securityhub_insight__filters__related_findings_id = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__related_findings_id *)

type aws_securityhub_insight__filters__related_findings_product_arn = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__related_findings_product_arn *)

type aws_securityhub_insight__filters__resource_aws_ec2_instance_iam_instance_profile_arn = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__resource_aws_ec2_instance_iam_instance_profile_arn *)

type aws_securityhub_insight__filters__resource_aws_ec2_instance_image_id = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__resource_aws_ec2_instance_image_id *)

type aws_securityhub_insight__filters__resource_aws_ec2_instance_ipv4_addresses = {
  cidr : string prop;  (** cidr *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__resource_aws_ec2_instance_ipv4_addresses *)

type aws_securityhub_insight__filters__resource_aws_ec2_instance_ipv6_addresses = {
  cidr : string prop;  (** cidr *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__resource_aws_ec2_instance_ipv6_addresses *)

type aws_securityhub_insight__filters__resource_aws_ec2_instance_key_name = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__resource_aws_ec2_instance_key_name *)

type aws_securityhub_insight__filters__resource_aws_ec2_instance_launched_at__date_range = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__resource_aws_ec2_instance_launched_at__date_range *)

type aws_securityhub_insight__filters__resource_aws_ec2_instance_launched_at = {
  end_ : string prop option; [@option] [@key "end"]  (** end *)
  start : string prop option; [@option]  (** start *)
  date_range :
    aws_securityhub_insight__filters__resource_aws_ec2_instance_launched_at__date_range
    list;
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__resource_aws_ec2_instance_launched_at *)

type aws_securityhub_insight__filters__resource_aws_ec2_instance_subnet_id = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__resource_aws_ec2_instance_subnet_id *)

type aws_securityhub_insight__filters__resource_aws_ec2_instance_type = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__resource_aws_ec2_instance_type *)

type aws_securityhub_insight__filters__resource_aws_ec2_instance_vpc_id = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__resource_aws_ec2_instance_vpc_id *)

type aws_securityhub_insight__filters__resource_aws_iam_access_key_created_at__date_range = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__resource_aws_iam_access_key_created_at__date_range *)

type aws_securityhub_insight__filters__resource_aws_iam_access_key_created_at = {
  end_ : string prop option; [@option] [@key "end"]  (** end *)
  start : string prop option; [@option]  (** start *)
  date_range :
    aws_securityhub_insight__filters__resource_aws_iam_access_key_created_at__date_range
    list;
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__resource_aws_iam_access_key_created_at *)

type aws_securityhub_insight__filters__resource_aws_iam_access_key_status = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__resource_aws_iam_access_key_status *)

type aws_securityhub_insight__filters__resource_aws_iam_access_key_user_name = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__resource_aws_iam_access_key_user_name *)

type aws_securityhub_insight__filters__resource_aws_s3_bucket_owner_id = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__resource_aws_s3_bucket_owner_id *)

type aws_securityhub_insight__filters__resource_aws_s3_bucket_owner_name = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__resource_aws_s3_bucket_owner_name *)

type aws_securityhub_insight__filters__resource_container_image_id = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__resource_container_image_id *)

type aws_securityhub_insight__filters__resource_container_image_name = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__resource_container_image_name *)

type aws_securityhub_insight__filters__resource_container_launched_at__date_range = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__resource_container_launched_at__date_range *)

type aws_securityhub_insight__filters__resource_container_launched_at = {
  end_ : string prop option; [@option] [@key "end"]  (** end *)
  start : string prop option; [@option]  (** start *)
  date_range :
    aws_securityhub_insight__filters__resource_container_launched_at__date_range
    list;
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__resource_container_launched_at *)

type aws_securityhub_insight__filters__resource_container_name = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__resource_container_name *)

type aws_securityhub_insight__filters__resource_details_other = {
  comparison : string prop;  (** comparison *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__resource_details_other *)

type aws_securityhub_insight__filters__resource_id = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__resource_id *)

type aws_securityhub_insight__filters__resource_partition = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__resource_partition *)

type aws_securityhub_insight__filters__resource_region = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__resource_region *)

type aws_securityhub_insight__filters__resource_tags = {
  comparison : string prop;  (** comparison *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__resource_tags *)

type aws_securityhub_insight__filters__resource_type = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__resource_type *)

type aws_securityhub_insight__filters__severity_label = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__severity_label *)

type aws_securityhub_insight__filters__source_url = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__source_url *)

type aws_securityhub_insight__filters__threat_intel_indicator_category = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__threat_intel_indicator_category *)

type aws_securityhub_insight__filters__threat_intel_indicator_last_observed_at__date_range = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__threat_intel_indicator_last_observed_at__date_range *)

type aws_securityhub_insight__filters__threat_intel_indicator_last_observed_at = {
  end_ : string prop option; [@option] [@key "end"]  (** end *)
  start : string prop option; [@option]  (** start *)
  date_range :
    aws_securityhub_insight__filters__threat_intel_indicator_last_observed_at__date_range
    list;
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__threat_intel_indicator_last_observed_at *)

type aws_securityhub_insight__filters__threat_intel_indicator_source = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__threat_intel_indicator_source *)

type aws_securityhub_insight__filters__threat_intel_indicator_source_url = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__threat_intel_indicator_source_url *)

type aws_securityhub_insight__filters__threat_intel_indicator_type = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__threat_intel_indicator_type *)

type aws_securityhub_insight__filters__threat_intel_indicator_value = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__threat_intel_indicator_value *)

type aws_securityhub_insight__filters__title = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__title *)

type aws_securityhub_insight__filters__type = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__type *)

type aws_securityhub_insight__filters__updated_at__date_range = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__updated_at__date_range *)

type aws_securityhub_insight__filters__updated_at = {
  end_ : string prop option; [@option] [@key "end"]  (** end *)
  start : string prop option; [@option]  (** start *)
  date_range :
    aws_securityhub_insight__filters__updated_at__date_range list;
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__updated_at *)

type aws_securityhub_insight__filters__user_defined_values = {
  comparison : string prop;  (** comparison *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__user_defined_values *)

type aws_securityhub_insight__filters__verification_state = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__verification_state *)

type aws_securityhub_insight__filters__workflow_status = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters__workflow_status *)

type aws_securityhub_insight__filters = {
  aws_account_id :
    aws_securityhub_insight__filters__aws_account_id list;
  company_name : aws_securityhub_insight__filters__company_name list;
  compliance_status :
    aws_securityhub_insight__filters__compliance_status list;
  confidence : aws_securityhub_insight__filters__confidence list;
  created_at : aws_securityhub_insight__filters__created_at list;
  criticality : aws_securityhub_insight__filters__criticality list;
  description : aws_securityhub_insight__filters__description list;
  finding_provider_fields_confidence :
    aws_securityhub_insight__filters__finding_provider_fields_confidence
    list;
  finding_provider_fields_criticality :
    aws_securityhub_insight__filters__finding_provider_fields_criticality
    list;
  finding_provider_fields_related_findings_id :
    aws_securityhub_insight__filters__finding_provider_fields_related_findings_id
    list;
  finding_provider_fields_related_findings_product_arn :
    aws_securityhub_insight__filters__finding_provider_fields_related_findings_product_arn
    list;
  finding_provider_fields_severity_label :
    aws_securityhub_insight__filters__finding_provider_fields_severity_label
    list;
  finding_provider_fields_severity_original :
    aws_securityhub_insight__filters__finding_provider_fields_severity_original
    list;
  finding_provider_fields_types :
    aws_securityhub_insight__filters__finding_provider_fields_types
    list;
  first_observed_at :
    aws_securityhub_insight__filters__first_observed_at list;
  generator_id : aws_securityhub_insight__filters__generator_id list;
  id : aws_securityhub_insight__filters__id list;
  keyword : aws_securityhub_insight__filters__keyword list;
  last_observed_at :
    aws_securityhub_insight__filters__last_observed_at list;
  malware_name : aws_securityhub_insight__filters__malware_name list;
  malware_path : aws_securityhub_insight__filters__malware_path list;
  malware_state :
    aws_securityhub_insight__filters__malware_state list;
  malware_type : aws_securityhub_insight__filters__malware_type list;
  network_destination_domain :
    aws_securityhub_insight__filters__network_destination_domain list;
  network_destination_ipv4 :
    aws_securityhub_insight__filters__network_destination_ipv4 list;
  network_destination_ipv6 :
    aws_securityhub_insight__filters__network_destination_ipv6 list;
  network_destination_port :
    aws_securityhub_insight__filters__network_destination_port list;
  network_direction :
    aws_securityhub_insight__filters__network_direction list;
  network_protocol :
    aws_securityhub_insight__filters__network_protocol list;
  network_source_domain :
    aws_securityhub_insight__filters__network_source_domain list;
  network_source_ipv4 :
    aws_securityhub_insight__filters__network_source_ipv4 list;
  network_source_ipv6 :
    aws_securityhub_insight__filters__network_source_ipv6 list;
  network_source_mac :
    aws_securityhub_insight__filters__network_source_mac list;
  network_source_port :
    aws_securityhub_insight__filters__network_source_port list;
  note_text : aws_securityhub_insight__filters__note_text list;
  note_updated_at :
    aws_securityhub_insight__filters__note_updated_at list;
  note_updated_by :
    aws_securityhub_insight__filters__note_updated_by list;
  process_launched_at :
    aws_securityhub_insight__filters__process_launched_at list;
  process_name : aws_securityhub_insight__filters__process_name list;
  process_parent_pid :
    aws_securityhub_insight__filters__process_parent_pid list;
  process_path : aws_securityhub_insight__filters__process_path list;
  process_pid : aws_securityhub_insight__filters__process_pid list;
  process_terminated_at :
    aws_securityhub_insight__filters__process_terminated_at list;
  product_arn : aws_securityhub_insight__filters__product_arn list;
  product_fields :
    aws_securityhub_insight__filters__product_fields list;
  product_name : aws_securityhub_insight__filters__product_name list;
  recommendation_text :
    aws_securityhub_insight__filters__recommendation_text list;
  record_state : aws_securityhub_insight__filters__record_state list;
  related_findings_id :
    aws_securityhub_insight__filters__related_findings_id list;
  related_findings_product_arn :
    aws_securityhub_insight__filters__related_findings_product_arn
    list;
  resource_aws_ec2_instance_iam_instance_profile_arn :
    aws_securityhub_insight__filters__resource_aws_ec2_instance_iam_instance_profile_arn
    list;
  resource_aws_ec2_instance_image_id :
    aws_securityhub_insight__filters__resource_aws_ec2_instance_image_id
    list;
  resource_aws_ec2_instance_ipv4_addresses :
    aws_securityhub_insight__filters__resource_aws_ec2_instance_ipv4_addresses
    list;
  resource_aws_ec2_instance_ipv6_addresses :
    aws_securityhub_insight__filters__resource_aws_ec2_instance_ipv6_addresses
    list;
  resource_aws_ec2_instance_key_name :
    aws_securityhub_insight__filters__resource_aws_ec2_instance_key_name
    list;
  resource_aws_ec2_instance_launched_at :
    aws_securityhub_insight__filters__resource_aws_ec2_instance_launched_at
    list;
  resource_aws_ec2_instance_subnet_id :
    aws_securityhub_insight__filters__resource_aws_ec2_instance_subnet_id
    list;
  resource_aws_ec2_instance_type :
    aws_securityhub_insight__filters__resource_aws_ec2_instance_type
    list;
  resource_aws_ec2_instance_vpc_id :
    aws_securityhub_insight__filters__resource_aws_ec2_instance_vpc_id
    list;
  resource_aws_iam_access_key_created_at :
    aws_securityhub_insight__filters__resource_aws_iam_access_key_created_at
    list;
  resource_aws_iam_access_key_status :
    aws_securityhub_insight__filters__resource_aws_iam_access_key_status
    list;
  resource_aws_iam_access_key_user_name :
    aws_securityhub_insight__filters__resource_aws_iam_access_key_user_name
    list;
  resource_aws_s3_bucket_owner_id :
    aws_securityhub_insight__filters__resource_aws_s3_bucket_owner_id
    list;
  resource_aws_s3_bucket_owner_name :
    aws_securityhub_insight__filters__resource_aws_s3_bucket_owner_name
    list;
  resource_container_image_id :
    aws_securityhub_insight__filters__resource_container_image_id
    list;
  resource_container_image_name :
    aws_securityhub_insight__filters__resource_container_image_name
    list;
  resource_container_launched_at :
    aws_securityhub_insight__filters__resource_container_launched_at
    list;
  resource_container_name :
    aws_securityhub_insight__filters__resource_container_name list;
  resource_details_other :
    aws_securityhub_insight__filters__resource_details_other list;
  resource_id : aws_securityhub_insight__filters__resource_id list;
  resource_partition :
    aws_securityhub_insight__filters__resource_partition list;
  resource_region :
    aws_securityhub_insight__filters__resource_region list;
  resource_tags :
    aws_securityhub_insight__filters__resource_tags list;
  resource_type :
    aws_securityhub_insight__filters__resource_type list;
  severity_label :
    aws_securityhub_insight__filters__severity_label list;
  source_url : aws_securityhub_insight__filters__source_url list;
  threat_intel_indicator_category :
    aws_securityhub_insight__filters__threat_intel_indicator_category
    list;
  threat_intel_indicator_last_observed_at :
    aws_securityhub_insight__filters__threat_intel_indicator_last_observed_at
    list;
  threat_intel_indicator_source :
    aws_securityhub_insight__filters__threat_intel_indicator_source
    list;
  threat_intel_indicator_source_url :
    aws_securityhub_insight__filters__threat_intel_indicator_source_url
    list;
  threat_intel_indicator_type :
    aws_securityhub_insight__filters__threat_intel_indicator_type
    list;
  threat_intel_indicator_value :
    aws_securityhub_insight__filters__threat_intel_indicator_value
    list;
  title : aws_securityhub_insight__filters__title list;
  type_ : aws_securityhub_insight__filters__type list;
  updated_at : aws_securityhub_insight__filters__updated_at list;
  user_defined_values :
    aws_securityhub_insight__filters__user_defined_values list;
  verification_state :
    aws_securityhub_insight__filters__verification_state list;
  workflow_status :
    aws_securityhub_insight__filters__workflow_status list;
}
[@@deriving yojson_of]
(** aws_securityhub_insight__filters *)

type aws_securityhub_insight = {
  group_by_attribute : string prop;  (** group_by_attribute *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  filters : aws_securityhub_insight__filters list;
}
[@@deriving yojson_of]
(** aws_securityhub_insight *)

type t = {
  arn : string prop;
  group_by_attribute : string prop;
  id : string prop;
  name : string prop;
}

let aws_securityhub_insight ?id ~group_by_attribute ~name ~filters
    __resource_id =
  let __resource_type = "aws_securityhub_insight" in
  let __resource =
    ({ group_by_attribute; id; name; filters }
      : aws_securityhub_insight)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
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
