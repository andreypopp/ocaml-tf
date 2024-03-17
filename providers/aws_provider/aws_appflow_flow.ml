(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appflow_flow__destination_flow_config__destination_connector_properties__custom_connector__error_handling_config = {
  bucket_name : string prop option; [@option]  (** bucket_name *)
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
  fail_on_first_destination_error : bool prop option; [@option]
      (** fail_on_first_destination_error *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__custom_connector__error_handling_config *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__custom_connector = {
  custom_properties : (string * string prop) list option; [@option]
      (** custom_properties *)
  entity_name : string prop;  (** entity_name *)
  id_field_names : string prop list option; [@option]
      (** id_field_names *)
  write_operation_type : string prop option; [@option]
      (** write_operation_type *)
  error_handling_config :
    aws_appflow_flow__destination_flow_config__destination_connector_properties__custom_connector__error_handling_config
    list;
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__custom_connector *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__customer_profiles = {
  domain_name : string prop;  (** domain_name *)
  object_type_name : string prop option; [@option]
      (** object_type_name *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__customer_profiles *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__event_bridge__error_handling_config = {
  bucket_name : string prop option; [@option]  (** bucket_name *)
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
  fail_on_first_destination_error : bool prop option; [@option]
      (** fail_on_first_destination_error *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__event_bridge__error_handling_config *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__event_bridge = {
  object_ : string prop; [@key "object"]  (** object *)
  error_handling_config :
    aws_appflow_flow__destination_flow_config__destination_connector_properties__event_bridge__error_handling_config
    list;
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__event_bridge *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__honeycode__error_handling_config = {
  bucket_name : string prop option; [@option]  (** bucket_name *)
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
  fail_on_first_destination_error : bool prop option; [@option]
      (** fail_on_first_destination_error *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__honeycode__error_handling_config *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__honeycode = {
  object_ : string prop; [@key "object"]  (** object *)
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
  bucket_name : string prop option; [@option]  (** bucket_name *)
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
  fail_on_first_destination_error : bool prop option; [@option]
      (** fail_on_first_destination_error *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__marketo__error_handling_config *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__marketo = {
  object_ : string prop; [@key "object"]  (** object *)
  error_handling_config :
    aws_appflow_flow__destination_flow_config__destination_connector_properties__marketo__error_handling_config
    list;
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__marketo *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__redshift__error_handling_config = {
  bucket_name : string prop option; [@option]  (** bucket_name *)
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
  fail_on_first_destination_error : bool prop option; [@option]
      (** fail_on_first_destination_error *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__redshift__error_handling_config *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__redshift = {
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
  intermediate_bucket_name : string prop;
      (** intermediate_bucket_name *)
  object_ : string prop; [@key "object"]  (** object *)
  error_handling_config :
    aws_appflow_flow__destination_flow_config__destination_connector_properties__redshift__error_handling_config
    list;
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__redshift *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__s3__s3_output_format_config__aggregation_config = {
  aggregation_type : string prop option; [@option]
      (** aggregation_type *)
  target_file_size : float prop option; [@option]
      (** target_file_size *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__s3__s3_output_format_config__aggregation_config *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__s3__s3_output_format_config__prefix_config = {
  prefix_format : string prop option; [@option]  (** prefix_format *)
  prefix_type : string prop option; [@option]  (** prefix_type *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__s3__s3_output_format_config__prefix_config *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__s3__s3_output_format_config = {
  file_type : string prop option; [@option]  (** file_type *)
  preserve_source_data_typing : bool prop option; [@option]
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
  bucket_name : string prop;  (** bucket_name *)
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
  s3_output_format_config :
    aws_appflow_flow__destination_flow_config__destination_connector_properties__s3__s3_output_format_config
    list;
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__s3 *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__salesforce__error_handling_config = {
  bucket_name : string prop option; [@option]  (** bucket_name *)
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
  fail_on_first_destination_error : bool prop option; [@option]
      (** fail_on_first_destination_error *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__salesforce__error_handling_config *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__salesforce = {
  id_field_names : string prop list option; [@option]
      (** id_field_names *)
  object_ : string prop; [@key "object"]  (** object *)
  write_operation_type : string prop option; [@option]
      (** write_operation_type *)
  error_handling_config :
    aws_appflow_flow__destination_flow_config__destination_connector_properties__salesforce__error_handling_config
    list;
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__salesforce *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__sapo_data__error_handling_config = {
  bucket_name : string prop option; [@option]  (** bucket_name *)
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
  fail_on_first_destination_error : bool prop option; [@option]
      (** fail_on_first_destination_error *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__sapo_data__error_handling_config *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__sapo_data__success_response_handling_config = {
  bucket_name : string prop option; [@option]  (** bucket_name *)
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__sapo_data__success_response_handling_config *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__sapo_data = {
  id_field_names : string prop list option; [@option]
      (** id_field_names *)
  object_path : string prop;  (** object_path *)
  write_operation_type : string prop option; [@option]
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
  bucket_name : string prop option; [@option]  (** bucket_name *)
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
  fail_on_first_destination_error : bool prop option; [@option]
      (** fail_on_first_destination_error *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__snowflake__error_handling_config *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__snowflake = {
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
  intermediate_bucket_name : string prop;
      (** intermediate_bucket_name *)
  object_ : string prop; [@key "object"]  (** object *)
  error_handling_config :
    aws_appflow_flow__destination_flow_config__destination_connector_properties__snowflake__error_handling_config
    list;
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__snowflake *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__aggregation_config = {
  aggregation_type : string prop option; [@option]
      (** aggregation_type *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__aggregation_config *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__prefix_config = {
  prefix_format : string prop option; [@option]  (** prefix_format *)
  prefix_type : string prop;  (** prefix_type *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__prefix_config *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config = {
  file_type : string prop option; [@option]  (** file_type *)
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
  bucket_name : string prop;  (** bucket_name *)
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
  s3_output_format_config :
    aws_appflow_flow__destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config
    list;
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__upsolver *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__zendesk__error_handling_config = {
  bucket_name : string prop option; [@option]  (** bucket_name *)
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
  fail_on_first_destination_error : bool prop option; [@option]
      (** fail_on_first_destination_error *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config__destination_connector_properties__zendesk__error_handling_config *)

type aws_appflow_flow__destination_flow_config__destination_connector_properties__zendesk = {
  id_field_names : string prop list option; [@option]
      (** id_field_names *)
  object_ : string prop; [@key "object"]  (** object *)
  write_operation_type : string prop option; [@option]
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
  api_version : string prop option; [@option]  (** api_version *)
  connector_profile_name : string prop option; [@option]
      (** connector_profile_name *)
  connector_type : string prop;  (** connector_type *)
  destination_connector_properties :
    aws_appflow_flow__destination_flow_config__destination_connector_properties
    list;
}
[@@deriving yojson_of]
(** aws_appflow_flow__destination_flow_config *)

type aws_appflow_flow__source_flow_config__incremental_pull_config = {
  datetime_type_field_name : string prop option; [@option]
      (** datetime_type_field_name *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__source_flow_config__incremental_pull_config *)

type aws_appflow_flow__source_flow_config__source_connector_properties__amplitude = {
  object_ : string prop; [@key "object"]  (** object *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__source_flow_config__source_connector_properties__amplitude *)

type aws_appflow_flow__source_flow_config__source_connector_properties__custom_connector = {
  custom_properties : (string * string prop) list option; [@option]
      (** custom_properties *)
  entity_name : string prop;  (** entity_name *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__source_flow_config__source_connector_properties__custom_connector *)

type aws_appflow_flow__source_flow_config__source_connector_properties__datadog = {
  object_ : string prop; [@key "object"]  (** object *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__source_flow_config__source_connector_properties__datadog *)

type aws_appflow_flow__source_flow_config__source_connector_properties__dynatrace = {
  object_ : string prop; [@key "object"]  (** object *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__source_flow_config__source_connector_properties__dynatrace *)

type aws_appflow_flow__source_flow_config__source_connector_properties__google_analytics = {
  object_ : string prop; [@key "object"]  (** object *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__source_flow_config__source_connector_properties__google_analytics *)

type aws_appflow_flow__source_flow_config__source_connector_properties__infor_nexus = {
  object_ : string prop; [@key "object"]  (** object *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__source_flow_config__source_connector_properties__infor_nexus *)

type aws_appflow_flow__source_flow_config__source_connector_properties__marketo = {
  object_ : string prop; [@key "object"]  (** object *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__source_flow_config__source_connector_properties__marketo *)

type aws_appflow_flow__source_flow_config__source_connector_properties__s3__s3_input_format_config = {
  s3_input_file_type : string prop option; [@option]
      (** s3_input_file_type *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__source_flow_config__source_connector_properties__s3__s3_input_format_config *)

type aws_appflow_flow__source_flow_config__source_connector_properties__s3 = {
  bucket_name : string prop;  (** bucket_name *)
  bucket_prefix : string prop;  (** bucket_prefix *)
  s3_input_format_config :
    aws_appflow_flow__source_flow_config__source_connector_properties__s3__s3_input_format_config
    list;
}
[@@deriving yojson_of]
(** aws_appflow_flow__source_flow_config__source_connector_properties__s3 *)

type aws_appflow_flow__source_flow_config__source_connector_properties__salesforce = {
  enable_dynamic_field_update : bool prop option; [@option]
      (** enable_dynamic_field_update *)
  include_deleted_records : bool prop option; [@option]
      (** include_deleted_records *)
  object_ : string prop; [@key "object"]  (** object *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__source_flow_config__source_connector_properties__salesforce *)

type aws_appflow_flow__source_flow_config__source_connector_properties__sapo_data = {
  object_path : string prop;  (** object_path *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__source_flow_config__source_connector_properties__sapo_data *)

type aws_appflow_flow__source_flow_config__source_connector_properties__service_now = {
  object_ : string prop; [@key "object"]  (** object *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__source_flow_config__source_connector_properties__service_now *)

type aws_appflow_flow__source_flow_config__source_connector_properties__singular = {
  object_ : string prop; [@key "object"]  (** object *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__source_flow_config__source_connector_properties__singular *)

type aws_appflow_flow__source_flow_config__source_connector_properties__slack = {
  object_ : string prop; [@key "object"]  (** object *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__source_flow_config__source_connector_properties__slack *)

type aws_appflow_flow__source_flow_config__source_connector_properties__trendmicro = {
  object_ : string prop; [@key "object"]  (** object *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__source_flow_config__source_connector_properties__trendmicro *)

type aws_appflow_flow__source_flow_config__source_connector_properties__veeva = {
  document_type : string prop option; [@option]  (** document_type *)
  include_all_versions : bool prop option; [@option]
      (** include_all_versions *)
  include_renditions : bool prop option; [@option]
      (** include_renditions *)
  include_source_files : bool prop option; [@option]
      (** include_source_files *)
  object_ : string prop; [@key "object"]  (** object *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__source_flow_config__source_connector_properties__veeva *)

type aws_appflow_flow__source_flow_config__source_connector_properties__zendesk = {
  object_ : string prop; [@key "object"]  (** object *)
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
  api_version : string prop option; [@option]  (** api_version *)
  connector_profile_name : string prop option; [@option]
      (** connector_profile_name *)
  connector_type : string prop;  (** connector_type *)
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
  amplitude : string prop option; [@option]  (** amplitude *)
  custom_connector : string prop option; [@option]
      (** custom_connector *)
  datadog : string prop option; [@option]  (** datadog *)
  dynatrace : string prop option; [@option]  (** dynatrace *)
  google_analytics : string prop option; [@option]
      (** google_analytics *)
  infor_nexus : string prop option; [@option]  (** infor_nexus *)
  marketo : string prop option; [@option]  (** marketo *)
  s3 : string prop option; [@option]  (** s3 *)
  salesforce : string prop option; [@option]  (** salesforce *)
  sapo_data : string prop option; [@option]  (** sapo_data *)
  service_now : string prop option; [@option]  (** service_now *)
  singular : string prop option; [@option]  (** singular *)
  slack : string prop option; [@option]  (** slack *)
  trendmicro : string prop option; [@option]  (** trendmicro *)
  veeva : string prop option; [@option]  (** veeva *)
  zendesk : string prop option; [@option]  (** zendesk *)
}
[@@deriving yojson_of]
(** aws_appflow_flow__task__connector_operator *)

type aws_appflow_flow__task = {
  destination_field : string prop option; [@option]
      (** destination_field *)
  source_fields : string prop list option; [@option]
      (** source_fields *)
  task_properties : (string * string prop) list option; [@option]
      (** task_properties *)
  task_type : string prop;  (** task_type *)
  connector_operator :
    aws_appflow_flow__task__connector_operator list;
}
[@@deriving yojson_of]
(** aws_appflow_flow__task *)

type aws_appflow_flow__trigger_config__trigger_properties__scheduled = {
  data_pull_mode : string prop option; [@option]
      (** data_pull_mode *)
  first_execution_from : string prop option; [@option]
      (** first_execution_from *)
  schedule_end_time : string prop option; [@option]
      (** schedule_end_time *)
  schedule_expression : string prop;  (** schedule_expression *)
  schedule_offset : float prop option; [@option]
      (** schedule_offset *)
  schedule_start_time : string prop option; [@option]
      (** schedule_start_time *)
  timezone : string prop option; [@option]  (** timezone *)
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
  trigger_type : string prop;  (** trigger_type *)
  trigger_properties :
    aws_appflow_flow__trigger_config__trigger_properties list;
}
[@@deriving yojson_of]
(** aws_appflow_flow__trigger_config *)

type aws_appflow_flow = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  kms_arn : string prop option; [@option]  (** kms_arn *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  destination_flow_config :
    aws_appflow_flow__destination_flow_config list;
  source_flow_config : aws_appflow_flow__source_flow_config list;
  task : aws_appflow_flow__task list;
  trigger_config : aws_appflow_flow__trigger_config list;
}
[@@deriving yojson_of]
(** aws_appflow_flow *)

type t = {
  arn : string prop;
  description : string prop;
  flow_status : string prop;
  id : string prop;
  kms_arn : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_appflow_flow ?description ?id ?kms_arn ?tags ?tags_all ~name
    ~destination_flow_config ~source_flow_config ~task
    ~trigger_config __resource_id =
  let __resource_type = "aws_appflow_flow" in
  let __resource =
    ({
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
      : aws_appflow_flow)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appflow_flow __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       flow_status =
         Prop.computed __resource_type __resource_id "flow_status";
       id = Prop.computed __resource_type __resource_id "id";
       kms_arn =
         Prop.computed __resource_type __resource_id "kms_arn";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
