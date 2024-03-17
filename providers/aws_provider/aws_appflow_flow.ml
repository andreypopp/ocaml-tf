(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appflow_flow__destination_flow_config__destination_connector_properties__custom_connector__error_handling_config = {
  bucket_name : string option; [@option]  (** bucket_name *)
  bucket_prefix : string option; [@option]  (** bucket_prefix *)
  fail_on_first_destination_error : bool option; [@option]
      (** fail_on_first_destination_error *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__custom_connector__error_handling_config *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__custom_connector = {
  custom_properties : (string * string) list option; [@option]
      (** custom_properties *)
  entity_name : string;  (** entity_name *)
  id_field_names : string list option; [@option]
      (** id_field_names *)
  write_operation_type : string option; [@option]
      (** write_operation_type *)
  error_handling_config :
    aws_appflow_flow__destination_flow_config__destination_connector_properties__custom_connector__error_handling_config
    list;
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__custom_connector *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__customer_profiles = {
  domain_name : string;  (** domain_name *)
  object_type_name : string option; [@option]  (** object_type_name *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__customer_profiles *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__event_bridge__error_handling_config = {
  bucket_name : string option; [@option]  (** bucket_name *)
  bucket_prefix : string option; [@option]  (** bucket_prefix *)
  fail_on_first_destination_error : bool option; [@option]
      (** fail_on_first_destination_error *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__event_bridge__error_handling_config *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__event_bridge = {
  object_ : string; [@key "object"]  (** object *)
  error_handling_config :
    aws_appflow_flow__destination_flow_config__destination_connector_properties__event_bridge__error_handling_config
    list;
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__event_bridge *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__honeycode__error_handling_config = {
  bucket_name : string option; [@option]  (** bucket_name *)
  bucket_prefix : string option; [@option]  (** bucket_prefix *)
  fail_on_first_destination_error : bool option; [@option]
      (** fail_on_first_destination_error *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__honeycode__error_handling_config *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__honeycode = {
  object_ : string; [@key "object"]  (** object *)
  error_handling_config :
    aws_appflow_flow__destination_flow_config__destination_connector_properties__honeycode__error_handling_config
    list;
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__honeycode *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__lookout_metrics =
  unit
[@@deriving yojson_of]

type aws_appflow_flow__destination_flow_config__destination_connector_properties__marketo__error_handling_config = {
  bucket_name : string option; [@option]  (** bucket_name *)
  bucket_prefix : string option; [@option]  (** bucket_prefix *)
  fail_on_first_destination_error : bool option; [@option]
      (** fail_on_first_destination_error *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__marketo__error_handling_config *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__marketo = {
  object_ : string; [@key "object"]  (** object *)
  error_handling_config :
    aws_appflow_flow__destination_flow_config__destination_connector_properties__marketo__error_handling_config
    list;
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__marketo *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__redshift__error_handling_config = {
  bucket_name : string option; [@option]  (** bucket_name *)
  bucket_prefix : string option; [@option]  (** bucket_prefix *)
  fail_on_first_destination_error : bool option; [@option]
      (** fail_on_first_destination_error *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__redshift__error_handling_config *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__redshift = {
  bucket_prefix : string option; [@option]  (** bucket_prefix *)
  intermediate_bucket_name : string;  (** intermediate_bucket_name *)
  object_ : string; [@key "object"]  (** object *)
  error_handling_config :
    aws_appflow_flow__destination_flow_config__destination_connector_properties__redshift__error_handling_config
    list;
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__redshift *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__s3__s3_output_format_config__aggregation_config = {
  aggregation_type : string option; [@option]
      (** aggregation_type *)
  target_file_size : float option; [@option]  (** target_file_size *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__s3__s3_output_format_config__aggregation_config *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__s3__s3_output_format_config__prefix_config = {
  prefix_format : string option; [@option]  (** prefix_format *)
  prefix_type : string option; [@option]  (** prefix_type *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__s3__s3_output_format_config__prefix_config *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__s3__s3_output_format_config = {
  file_type : string option; [@option]  (** file_type *)
  preserve_source_data_typing : bool option; [@option]
      (** preserve_source_data_typing *)
  aggregation_config :
    aws_appflow_flow__destination_flow_config__destination_connector_properties__s3__s3_output_format_config__aggregation_config
    list;
  prefix_config :
    aws_appflow_flow__destination_flow_config__destination_connector_properties__s3__s3_output_format_config__prefix_config
    list;
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__s3__s3_output_format_config *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__s3 = {
  bucket_name : string;  (** bucket_name *)
  bucket_prefix : string option; [@option]  (** bucket_prefix *)
  s3_output_format_config :
    aws_appflow_flow__destination_flow_config__destination_connector_properties__s3__s3_output_format_config
    list;
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__s3 *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__salesforce__error_handling_config = {
  bucket_name : string option; [@option]  (** bucket_name *)
  bucket_prefix : string option; [@option]  (** bucket_prefix *)
  fail_on_first_destination_error : bool option; [@option]
      (** fail_on_first_destination_error *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__salesforce__error_handling_config *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__salesforce = {
  id_field_names : string list option; [@option]
      (** id_field_names *)
  object_ : string; [@key "object"]  (** object *)
  write_operation_type : string option; [@option]
      (** write_operation_type *)
  error_handling_config :
    aws_appflow_flow__destination_flow_config__destination_connector_properties__salesforce__error_handling_config
    list;
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__salesforce *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__sapo_data__error_handling_config = {
  bucket_name : string option; [@option]  (** bucket_name *)
  bucket_prefix : string option; [@option]  (** bucket_prefix *)
  fail_on_first_destination_error : bool option; [@option]
      (** fail_on_first_destination_error *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__sapo_data__error_handling_config *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__sapo_data__success_response_handling_config = {
  bucket_name : string option; [@option]  (** bucket_name *)
  bucket_prefix : string option; [@option]  (** bucket_prefix *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__sapo_data__success_response_handling_config *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__sapo_data = {
  id_field_names : string list option; [@option]
      (** id_field_names *)
  object_path : string;  (** object_path *)
  write_operation_type : string option; [@option]
      (** write_operation_type *)
  error_handling_config :
    aws_appflow_flow__destination_flow_config__destination_connector_properties__sapo_data__error_handling_config
    list;
  success_response_handling_config :
    aws_appflow_flow__destination_flow_config__destination_connector_properties__sapo_data__success_response_handling_config
    list;
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__sapo_data *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__snowflake__error_handling_config = {
  bucket_name : string option; [@option]  (** bucket_name *)
  bucket_prefix : string option; [@option]  (** bucket_prefix *)
  fail_on_first_destination_error : bool option; [@option]
      (** fail_on_first_destination_error *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__snowflake__error_handling_config *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__snowflake = {
  bucket_prefix : string option; [@option]  (** bucket_prefix *)
  intermediate_bucket_name : string;  (** intermediate_bucket_name *)
  object_ : string; [@key "object"]  (** object *)
  error_handling_config :
    aws_appflow_flow__destination_flow_config__destination_connector_properties__snowflake__error_handling_config
    list;
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__snowflake *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__aggregation_config = {
  aggregation_type : string option; [@option]  (** aggregation_type *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__aggregation_config *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__prefix_config = {
  prefix_format : string option; [@option]  (** prefix_format *)
  prefix_type : string;  (** prefix_type *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__prefix_config *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config = {
  file_type : string option; [@option]  (** file_type *)
  aggregation_config :
    aws_appflow_flow__destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__aggregation_config
    list;
  prefix_config :
    aws_appflow_flow__destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__prefix_config
    list;
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__upsolver = {
  bucket_name : string;  (** bucket_name *)
  bucket_prefix : string option; [@option]  (** bucket_prefix *)
  s3_output_format_config :
    aws_appflow_flow__destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config
    list;
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__upsolver *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__zendesk__error_handling_config = {
  bucket_name : string option; [@option]  (** bucket_name *)
  bucket_prefix : string option; [@option]  (** bucket_prefix *)
  fail_on_first_destination_error : bool option; [@option]
      (** fail_on_first_destination_error *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__zendesk__error_handling_config *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__zendesk = {
  id_field_names : string list option; [@option]
      (** id_field_names *)
  object_ : string; [@key "object"]  (** object *)
  write_operation_type : string option; [@option]
      (** write_operation_type *)
  error_handling_config :
    aws_appflow_flow__destination_flow_config__destination_connector_properties__zendesk__error_handling_config
    list;
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__zendesk *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties = {
  custom_connector :
    aws_appflow_flow__destination_flow_config__destination_connector_properties__custom_connector
    list;
  customer_profiles :
    aws_appflow_flow__destination_flow_config__destination_connector_properties__customer_profiles
    list;
  event_bridge :
    aws_appflow_flow__destination_flow_config__destination_connector_properties__event_bridge
    list;
  honeycode :
    aws_appflow_flow__destination_flow_config__destination_connector_properties__honeycode
    list;
  lookout_metrics :
    aws_appflow_flow__destination_flow_config__destination_connector_properties__lookout_metrics
    list;
  marketo :
    aws_appflow_flow__destination_flow_config__destination_connector_properties__marketo
    list;
  redshift :
    aws_appflow_flow__destination_flow_config__destination_connector_properties__redshift
    list;
  s3 :
    aws_appflow_flow__destination_flow_config__destination_connector_properties__s3
    list;
  salesforce :
    aws_appflow_flow__destination_flow_config__destination_connector_properties__salesforce
    list;
  sapo_data :
    aws_appflow_flow__destination_flow_config__destination_connector_properties__sapo_data
    list;
  snowflake :
    aws_appflow_flow__destination_flow_config__destination_connector_properties__snowflake
    list;
  upsolver :
    aws_appflow_flow__destination_flow_config__destination_connector_properties__upsolver
    list;
  zendesk :
    aws_appflow_flow__destination_flow_config__destination_connector_properties__zendesk
    list;
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties *)

type aws_appflow_flow__destination_flow_config = {
  api_version : string option; [@option]  (** api_version *)
  connector_profile_name : string option; [@option]
      (** connector_profile_name *)
  connector_type : string;  (** connector_type *)
  destination_connector_properties :
    aws_appflow_flow__destination_flow_config__destination_connector_properties
    list;
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config *)

type aws_appflow_flow__source_flow_config__incremental_pull_config = {
  datetime_type_field_name : string option; [@option]
      (** datetime_type_field_name *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__source_flow_config__incremental_pull_config *)

type aws_appflow_flow__source_flow_config__source_connector_properties__amplitude = {
  object_ : string; [@key "object"]  (** object *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__source_flow_config__source_connector_properties__amplitude *)

type aws_appflow_flow__source_flow_config__source_connector_properties__custom_connector = {
  custom_properties : (string * string) list option; [@option]
      (** custom_properties *)
  entity_name : string;  (** entity_name *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__source_flow_config__source_connector_properties__custom_connector *)

type aws_appflow_flow__source_flow_config__source_connector_properties__datadog = {
  object_ : string; [@key "object"]  (** object *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__source_flow_config__source_connector_properties__datadog *)

type aws_appflow_flow__source_flow_config__source_connector_properties__dynatrace = {
  object_ : string; [@key "object"]  (** object *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__source_flow_config__source_connector_properties__dynatrace *)

type aws_appflow_flow__source_flow_config__source_connector_properties__google_analytics = {
  object_ : string; [@key "object"]  (** object *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__source_flow_config__source_connector_properties__google_analytics *)

type aws_appflow_flow__source_flow_config__source_connector_properties__infor_nexus = {
  object_ : string; [@key "object"]  (** object *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__source_flow_config__source_connector_properties__infor_nexus *)

type aws_appflow_flow__source_flow_config__source_connector_properties__marketo = {
  object_ : string; [@key "object"]  (** object *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__source_flow_config__source_connector_properties__marketo *)

type aws_appflow_flow__source_flow_config__source_connector_properties__s3__s3_input_format_config = {
  s3_input_file_type : string option; [@option]
      (** s3_input_file_type *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__source_flow_config__source_connector_properties__s3__s3_input_format_config *)

type aws_appflow_flow__source_flow_config__source_connector_properties__s3 = {
  bucket_name : string;  (** bucket_name *)
  bucket_prefix : string;  (** bucket_prefix *)
  s3_input_format_config :
    aws_appflow_flow__source_flow_config__source_connector_properties__s3__s3_input_format_config
    list;
}
[@@deriving yojson_of]
(** aws_appflow_flow__source_flow_config__source_connector_properties__s3 *)

type aws_appflow_flow__source_flow_config__source_connector_properties__salesforce = {
  enable_dynamic_field_update : bool option; [@option]
      (** enable_dynamic_field_update *)
  include_deleted_records : bool option; [@option]
      (** include_deleted_records *)
  object_ : string; [@key "object"]  (** object *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__source_flow_config__source_connector_properties__salesforce *)

type aws_appflow_flow__source_flow_config__source_connector_properties__sapo_data = {
  object_path : string;  (** object_path *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__source_flow_config__source_connector_properties__sapo_data *)

type aws_appflow_flow__source_flow_config__source_connector_properties__service_now = {
  object_ : string; [@key "object"]  (** object *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__source_flow_config__source_connector_properties__service_now *)

type aws_appflow_flow__source_flow_config__source_connector_properties__singular = {
  object_ : string; [@key "object"]  (** object *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__source_flow_config__source_connector_properties__singular *)

type aws_appflow_flow__source_flow_config__source_connector_properties__slack = {
  object_ : string; [@key "object"]  (** object *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__source_flow_config__source_connector_properties__slack *)

type aws_appflow_flow__source_flow_config__source_connector_properties__trendmicro = {
  object_ : string; [@key "object"]  (** object *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__source_flow_config__source_connector_properties__trendmicro *)

type aws_appflow_flow__source_flow_config__source_connector_properties__veeva = {
  document_type : string option; [@option]  (** document_type *)
  include_all_versions : bool option; [@option]
      (** include_all_versions *)
  include_renditions : bool option; [@option]
      (** include_renditions *)
  include_source_files : bool option; [@option]
      (** include_source_files *)
  object_ : string; [@key "object"]  (** object *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__source_flow_config__source_connector_properties__veeva *)

type aws_appflow_flow__source_flow_config__source_connector_properties__zendesk = {
  object_ : string; [@key "object"]  (** object *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__source_flow_config__source_connector_properties__zendesk *)

type aws_appflow_flow__source_flow_config__source_connector_properties = {
  amplitude :
    aws_appflow_flow__source_flow_config__source_connector_properties__amplitude
    list;
  custom_connector :
    aws_appflow_flow__source_flow_config__source_connector_properties__custom_connector
    list;
  datadog :
    aws_appflow_flow__source_flow_config__source_connector_properties__datadog
    list;
  dynatrace :
    aws_appflow_flow__source_flow_config__source_connector_properties__dynatrace
    list;
  google_analytics :
    aws_appflow_flow__source_flow_config__source_connector_properties__google_analytics
    list;
  infor_nexus :
    aws_appflow_flow__source_flow_config__source_connector_properties__infor_nexus
    list;
  marketo :
    aws_appflow_flow__source_flow_config__source_connector_properties__marketo
    list;
  s3 :
    aws_appflow_flow__source_flow_config__source_connector_properties__s3
    list;
  salesforce :
    aws_appflow_flow__source_flow_config__source_connector_properties__salesforce
    list;
  sapo_data :
    aws_appflow_flow__source_flow_config__source_connector_properties__sapo_data
    list;
  service_now :
    aws_appflow_flow__source_flow_config__source_connector_properties__service_now
    list;
  singular :
    aws_appflow_flow__source_flow_config__source_connector_properties__singular
    list;
  slack :
    aws_appflow_flow__source_flow_config__source_connector_properties__slack
    list;
  trendmicro :
    aws_appflow_flow__source_flow_config__source_connector_properties__trendmicro
    list;
  veeva :
    aws_appflow_flow__source_flow_config__source_connector_properties__veeva
    list;
  zendesk :
    aws_appflow_flow__source_flow_config__source_connector_properties__zendesk
    list;
}
[@@deriving yojson_of]
(** aws_appflow_flow__source_flow_config__source_connector_properties *)

type aws_appflow_flow__source_flow_config = {
  api_version : string option; [@option]  (** api_version *)
  connector_profile_name : string option; [@option]
      (** connector_profile_name *)
  connector_type : string;  (** connector_type *)
  incremental_pull_config :
    aws_appflow_flow__source_flow_config__incremental_pull_config
    list;
  source_connector_properties :
    aws_appflow_flow__source_flow_config__source_connector_properties
    list;
}
[@@deriving yojson_of]
(** aws_appflow_flow__source_flow_config *)

type aws_appflow_flow__task__connector_operator = {
  amplitude : string option; [@option]  (** amplitude *)
  custom_connector : string option; [@option]
      (** custom_connector *)
  datadog : string option; [@option]  (** datadog *)
  dynatrace : string option; [@option]  (** dynatrace *)
  google_analytics : string option; [@option]
      (** google_analytics *)
  infor_nexus : string option; [@option]  (** infor_nexus *)
  marketo : string option; [@option]  (** marketo *)
  s3 : string option; [@option]  (** s3 *)
  salesforce : string option; [@option]  (** salesforce *)
  sapo_data : string option; [@option]  (** sapo_data *)
  service_now : string option; [@option]  (** service_now *)
  singular : string option; [@option]  (** singular *)
  slack : string option; [@option]  (** slack *)
  trendmicro : string option; [@option]  (** trendmicro *)
  veeva : string option; [@option]  (** veeva *)
  zendesk : string option; [@option]  (** zendesk *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__task__connector_operator *)

type aws_appflow_flow__task = {
  destination_field : string option; [@option]
      (** destination_field *)
  source_fields : string list option; [@option]  (** source_fields *)
  task_properties : (string * string) list option; [@option]
      (** task_properties *)
  task_type : string;  (** task_type *)
  connector_operator :
    aws_appflow_flow__task__connector_operator list;
}
[@@deriving yojson_of]
(** aws_appflow_flow__task *)

type aws_appflow_flow__trigger_config__trigger_properties__scheduled = {
  data_pull_mode : string option; [@option]  (** data_pull_mode *)
  first_execution_from : string option; [@option]
      (** first_execution_from *)
  schedule_end_time : string option; [@option]
      (** schedule_end_time *)
  schedule_expression : string;  (** schedule_expression *)
  schedule_offset : float option; [@option]  (** schedule_offset *)
  schedule_start_time : string option; [@option]
      (** schedule_start_time *)
  timezone : string option; [@option]  (** timezone *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__trigger_config__trigger_properties__scheduled *)

type aws_appflow_flow__trigger_config__trigger_properties = {
  scheduled :
    aws_appflow_flow__trigger_config__trigger_properties__scheduled
    list;
}
[@@deriving yojson_of]
(** aws_appflow_flow__trigger_config__trigger_properties *)

type aws_appflow_flow__trigger_config = {
  trigger_type : string;  (** trigger_type *)
  trigger_properties :
    aws_appflow_flow__trigger_config__trigger_properties list;
}
[@@deriving yojson_of]
(** aws_appflow_flow__trigger_config *)

type aws_appflow_flow = {
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  kms_arn : string option; [@option]  (** kms_arn *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  destination_flow_config :
    aws_appflow_flow__destination_flow_config list;
  source_flow_config : aws_appflow_flow__source_flow_config list;
  task : aws_appflow_flow__task list;
  trigger_config : aws_appflow_flow__trigger_config list;
}
[@@deriving yojson_of]
(** aws_appflow_flow *)

let aws_appflow_flow ?description ?id ?kms_arn ?tags ?tags_all ~name
    ~destination_flow_config ~source_flow_config ~task
    ~trigger_config __resource_id =
  let __resource_type = "aws_appflow_flow" in
  let __resource =
    {
      description;
      id;
      kms_arn;
      name;
      tags;
      tags_all;
      destination_flow_config;
      source_flow_config;
      task;
      trigger_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appflow_flow __resource);
  ()
