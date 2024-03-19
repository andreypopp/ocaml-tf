(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type destination_flow_config__destination_connector_properties__custom_connector__error_handling_config = {
  bucket_name : string prop option; [@option]  (** bucket_name *)
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
  fail_on_first_destination_error : bool prop option; [@option]
      (** fail_on_first_destination_error *)
}
[@@deriving yojson_of]
(** destination_flow_config__destination_connector_properties__custom_connector__error_handling_config *)

type destination_flow_config__destination_connector_properties__custom_connector = {
  custom_properties : (string * string prop) list option; [@option]
      (** custom_properties *)
  entity_name : string prop;  (** entity_name *)
  id_field_names : string prop list option; [@option]
      (** id_field_names *)
  write_operation_type : string prop option; [@option]
      (** write_operation_type *)
  error_handling_config :
    destination_flow_config__destination_connector_properties__custom_connector__error_handling_config
    list;
}
[@@deriving yojson_of]
(** destination_flow_config__destination_connector_properties__custom_connector *)

type destination_flow_config__destination_connector_properties__customer_profiles = {
  domain_name : string prop;  (** domain_name *)
  object_type_name : string prop option; [@option]
      (** object_type_name *)
}
[@@deriving yojson_of]
(** destination_flow_config__destination_connector_properties__customer_profiles *)

type destination_flow_config__destination_connector_properties__event_bridge__error_handling_config = {
  bucket_name : string prop option; [@option]  (** bucket_name *)
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
  fail_on_first_destination_error : bool prop option; [@option]
      (** fail_on_first_destination_error *)
}
[@@deriving yojson_of]
(** destination_flow_config__destination_connector_properties__event_bridge__error_handling_config *)

type destination_flow_config__destination_connector_properties__event_bridge = {
  object_ : string prop; [@key "object"]  (** object *)
  error_handling_config :
    destination_flow_config__destination_connector_properties__event_bridge__error_handling_config
    list;
}
[@@deriving yojson_of]
(** destination_flow_config__destination_connector_properties__event_bridge *)

type destination_flow_config__destination_connector_properties__honeycode__error_handling_config = {
  bucket_name : string prop option; [@option]  (** bucket_name *)
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
  fail_on_first_destination_error : bool prop option; [@option]
      (** fail_on_first_destination_error *)
}
[@@deriving yojson_of]
(** destination_flow_config__destination_connector_properties__honeycode__error_handling_config *)

type destination_flow_config__destination_connector_properties__honeycode = {
  object_ : string prop; [@key "object"]  (** object *)
  error_handling_config :
    destination_flow_config__destination_connector_properties__honeycode__error_handling_config
    list;
}
[@@deriving yojson_of]
(** destination_flow_config__destination_connector_properties__honeycode *)

type destination_flow_config__destination_connector_properties__lookout_metrics =
  unit
[@@deriving yojson_of]

type destination_flow_config__destination_connector_properties__marketo__error_handling_config = {
  bucket_name : string prop option; [@option]  (** bucket_name *)
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
  fail_on_first_destination_error : bool prop option; [@option]
      (** fail_on_first_destination_error *)
}
[@@deriving yojson_of]
(** destination_flow_config__destination_connector_properties__marketo__error_handling_config *)

type destination_flow_config__destination_connector_properties__marketo = {
  object_ : string prop; [@key "object"]  (** object *)
  error_handling_config :
    destination_flow_config__destination_connector_properties__marketo__error_handling_config
    list;
}
[@@deriving yojson_of]
(** destination_flow_config__destination_connector_properties__marketo *)

type destination_flow_config__destination_connector_properties__redshift__error_handling_config = {
  bucket_name : string prop option; [@option]  (** bucket_name *)
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
  fail_on_first_destination_error : bool prop option; [@option]
      (** fail_on_first_destination_error *)
}
[@@deriving yojson_of]
(** destination_flow_config__destination_connector_properties__redshift__error_handling_config *)

type destination_flow_config__destination_connector_properties__redshift = {
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
  intermediate_bucket_name : string prop;
      (** intermediate_bucket_name *)
  object_ : string prop; [@key "object"]  (** object *)
  error_handling_config :
    destination_flow_config__destination_connector_properties__redshift__error_handling_config
    list;
}
[@@deriving yojson_of]
(** destination_flow_config__destination_connector_properties__redshift *)

type destination_flow_config__destination_connector_properties__s3__s3_output_format_config__aggregation_config = {
  aggregation_type : string prop option; [@option]
      (** aggregation_type *)
  target_file_size : float prop option; [@option]
      (** target_file_size *)
}
[@@deriving yojson_of]
(** destination_flow_config__destination_connector_properties__s3__s3_output_format_config__aggregation_config *)

type destination_flow_config__destination_connector_properties__s3__s3_output_format_config__prefix_config = {
  prefix_format : string prop option; [@option]  (** prefix_format *)
  prefix_type : string prop option; [@option]  (** prefix_type *)
}
[@@deriving yojson_of]
(** destination_flow_config__destination_connector_properties__s3__s3_output_format_config__prefix_config *)

type destination_flow_config__destination_connector_properties__s3__s3_output_format_config = {
  file_type : string prop option; [@option]  (** file_type *)
  preserve_source_data_typing : bool prop option; [@option]
      (** preserve_source_data_typing *)
  aggregation_config :
    destination_flow_config__destination_connector_properties__s3__s3_output_format_config__aggregation_config
    list;
  prefix_config :
    destination_flow_config__destination_connector_properties__s3__s3_output_format_config__prefix_config
    list;
}
[@@deriving yojson_of]
(** destination_flow_config__destination_connector_properties__s3__s3_output_format_config *)

type destination_flow_config__destination_connector_properties__s3 = {
  bucket_name : string prop;  (** bucket_name *)
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
  s3_output_format_config :
    destination_flow_config__destination_connector_properties__s3__s3_output_format_config
    list;
}
[@@deriving yojson_of]
(** destination_flow_config__destination_connector_properties__s3 *)

type destination_flow_config__destination_connector_properties__salesforce__error_handling_config = {
  bucket_name : string prop option; [@option]  (** bucket_name *)
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
  fail_on_first_destination_error : bool prop option; [@option]
      (** fail_on_first_destination_error *)
}
[@@deriving yojson_of]
(** destination_flow_config__destination_connector_properties__salesforce__error_handling_config *)

type destination_flow_config__destination_connector_properties__salesforce = {
  id_field_names : string prop list option; [@option]
      (** id_field_names *)
  object_ : string prop; [@key "object"]  (** object *)
  write_operation_type : string prop option; [@option]
      (** write_operation_type *)
  error_handling_config :
    destination_flow_config__destination_connector_properties__salesforce__error_handling_config
    list;
}
[@@deriving yojson_of]
(** destination_flow_config__destination_connector_properties__salesforce *)

type destination_flow_config__destination_connector_properties__sapo_data__error_handling_config = {
  bucket_name : string prop option; [@option]  (** bucket_name *)
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
  fail_on_first_destination_error : bool prop option; [@option]
      (** fail_on_first_destination_error *)
}
[@@deriving yojson_of]
(** destination_flow_config__destination_connector_properties__sapo_data__error_handling_config *)

type destination_flow_config__destination_connector_properties__sapo_data__success_response_handling_config = {
  bucket_name : string prop option; [@option]  (** bucket_name *)
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
}
[@@deriving yojson_of]
(** destination_flow_config__destination_connector_properties__sapo_data__success_response_handling_config *)

type destination_flow_config__destination_connector_properties__sapo_data = {
  id_field_names : string prop list option; [@option]
      (** id_field_names *)
  object_path : string prop;  (** object_path *)
  write_operation_type : string prop option; [@option]
      (** write_operation_type *)
  error_handling_config :
    destination_flow_config__destination_connector_properties__sapo_data__error_handling_config
    list;
  success_response_handling_config :
    destination_flow_config__destination_connector_properties__sapo_data__success_response_handling_config
    list;
}
[@@deriving yojson_of]
(** destination_flow_config__destination_connector_properties__sapo_data *)

type destination_flow_config__destination_connector_properties__snowflake__error_handling_config = {
  bucket_name : string prop option; [@option]  (** bucket_name *)
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
  fail_on_first_destination_error : bool prop option; [@option]
      (** fail_on_first_destination_error *)
}
[@@deriving yojson_of]
(** destination_flow_config__destination_connector_properties__snowflake__error_handling_config *)

type destination_flow_config__destination_connector_properties__snowflake = {
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
  intermediate_bucket_name : string prop;
      (** intermediate_bucket_name *)
  object_ : string prop; [@key "object"]  (** object *)
  error_handling_config :
    destination_flow_config__destination_connector_properties__snowflake__error_handling_config
    list;
}
[@@deriving yojson_of]
(** destination_flow_config__destination_connector_properties__snowflake *)

type destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__aggregation_config = {
  aggregation_type : string prop option; [@option]
      (** aggregation_type *)
}
[@@deriving yojson_of]
(** destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__aggregation_config *)

type destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__prefix_config = {
  prefix_format : string prop option; [@option]  (** prefix_format *)
  prefix_type : string prop;  (** prefix_type *)
}
[@@deriving yojson_of]
(** destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__prefix_config *)

type destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config = {
  file_type : string prop option; [@option]  (** file_type *)
  aggregation_config :
    destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__aggregation_config
    list;
  prefix_config :
    destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__prefix_config
    list;
}
[@@deriving yojson_of]
(** destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config *)

type destination_flow_config__destination_connector_properties__upsolver = {
  bucket_name : string prop;  (** bucket_name *)
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
  s3_output_format_config :
    destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config
    list;
}
[@@deriving yojson_of]
(** destination_flow_config__destination_connector_properties__upsolver *)

type destination_flow_config__destination_connector_properties__zendesk__error_handling_config = {
  bucket_name : string prop option; [@option]  (** bucket_name *)
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
  fail_on_first_destination_error : bool prop option; [@option]
      (** fail_on_first_destination_error *)
}
[@@deriving yojson_of]
(** destination_flow_config__destination_connector_properties__zendesk__error_handling_config *)

type destination_flow_config__destination_connector_properties__zendesk = {
  id_field_names : string prop list option; [@option]
      (** id_field_names *)
  object_ : string prop; [@key "object"]  (** object *)
  write_operation_type : string prop option; [@option]
      (** write_operation_type *)
  error_handling_config :
    destination_flow_config__destination_connector_properties__zendesk__error_handling_config
    list;
}
[@@deriving yojson_of]
(** destination_flow_config__destination_connector_properties__zendesk *)

type destination_flow_config__destination_connector_properties = {
  custom_connector :
    destination_flow_config__destination_connector_properties__custom_connector
    list;
  customer_profiles :
    destination_flow_config__destination_connector_properties__customer_profiles
    list;
  event_bridge :
    destination_flow_config__destination_connector_properties__event_bridge
    list;
  honeycode :
    destination_flow_config__destination_connector_properties__honeycode
    list;
  lookout_metrics :
    destination_flow_config__destination_connector_properties__lookout_metrics
    list;
  marketo :
    destination_flow_config__destination_connector_properties__marketo
    list;
  redshift :
    destination_flow_config__destination_connector_properties__redshift
    list;
  s3 :
    destination_flow_config__destination_connector_properties__s3
    list;
  salesforce :
    destination_flow_config__destination_connector_properties__salesforce
    list;
  sapo_data :
    destination_flow_config__destination_connector_properties__sapo_data
    list;
  snowflake :
    destination_flow_config__destination_connector_properties__snowflake
    list;
  upsolver :
    destination_flow_config__destination_connector_properties__upsolver
    list;
  zendesk :
    destination_flow_config__destination_connector_properties__zendesk
    list;
}
[@@deriving yojson_of]
(** destination_flow_config__destination_connector_properties *)

type destination_flow_config = {
  api_version : string prop option; [@option]  (** api_version *)
  connector_profile_name : string prop option; [@option]
      (** connector_profile_name *)
  connector_type : string prop;  (** connector_type *)
  destination_connector_properties :
    destination_flow_config__destination_connector_properties list;
}
[@@deriving yojson_of]
(** destination_flow_config *)

type source_flow_config__incremental_pull_config = {
  datetime_type_field_name : string prop option; [@option]
      (** datetime_type_field_name *)
}
[@@deriving yojson_of]
(** source_flow_config__incremental_pull_config *)

type source_flow_config__source_connector_properties__amplitude = {
  object_ : string prop; [@key "object"]  (** object *)
}
[@@deriving yojson_of]
(** source_flow_config__source_connector_properties__amplitude *)

type source_flow_config__source_connector_properties__custom_connector = {
  custom_properties : (string * string prop) list option; [@option]
      (** custom_properties *)
  entity_name : string prop;  (** entity_name *)
}
[@@deriving yojson_of]
(** source_flow_config__source_connector_properties__custom_connector *)

type source_flow_config__source_connector_properties__datadog = {
  object_ : string prop; [@key "object"]  (** object *)
}
[@@deriving yojson_of]
(** source_flow_config__source_connector_properties__datadog *)

type source_flow_config__source_connector_properties__dynatrace = {
  object_ : string prop; [@key "object"]  (** object *)
}
[@@deriving yojson_of]
(** source_flow_config__source_connector_properties__dynatrace *)

type source_flow_config__source_connector_properties__google_analytics = {
  object_ : string prop; [@key "object"]  (** object *)
}
[@@deriving yojson_of]
(** source_flow_config__source_connector_properties__google_analytics *)

type source_flow_config__source_connector_properties__infor_nexus = {
  object_ : string prop; [@key "object"]  (** object *)
}
[@@deriving yojson_of]
(** source_flow_config__source_connector_properties__infor_nexus *)

type source_flow_config__source_connector_properties__marketo = {
  object_ : string prop; [@key "object"]  (** object *)
}
[@@deriving yojson_of]
(** source_flow_config__source_connector_properties__marketo *)

type source_flow_config__source_connector_properties__s3__s3_input_format_config = {
  s3_input_file_type : string prop option; [@option]
      (** s3_input_file_type *)
}
[@@deriving yojson_of]
(** source_flow_config__source_connector_properties__s3__s3_input_format_config *)

type source_flow_config__source_connector_properties__s3 = {
  bucket_name : string prop;  (** bucket_name *)
  bucket_prefix : string prop;  (** bucket_prefix *)
  s3_input_format_config :
    source_flow_config__source_connector_properties__s3__s3_input_format_config
    list;
}
[@@deriving yojson_of]
(** source_flow_config__source_connector_properties__s3 *)

type source_flow_config__source_connector_properties__salesforce = {
  enable_dynamic_field_update : bool prop option; [@option]
      (** enable_dynamic_field_update *)
  include_deleted_records : bool prop option; [@option]
      (** include_deleted_records *)
  object_ : string prop; [@key "object"]  (** object *)
}
[@@deriving yojson_of]
(** source_flow_config__source_connector_properties__salesforce *)

type source_flow_config__source_connector_properties__sapo_data = {
  object_path : string prop;  (** object_path *)
}
[@@deriving yojson_of]
(** source_flow_config__source_connector_properties__sapo_data *)

type source_flow_config__source_connector_properties__service_now = {
  object_ : string prop; [@key "object"]  (** object *)
}
[@@deriving yojson_of]
(** source_flow_config__source_connector_properties__service_now *)

type source_flow_config__source_connector_properties__singular = {
  object_ : string prop; [@key "object"]  (** object *)
}
[@@deriving yojson_of]
(** source_flow_config__source_connector_properties__singular *)

type source_flow_config__source_connector_properties__slack = {
  object_ : string prop; [@key "object"]  (** object *)
}
[@@deriving yojson_of]
(** source_flow_config__source_connector_properties__slack *)

type source_flow_config__source_connector_properties__trendmicro = {
  object_ : string prop; [@key "object"]  (** object *)
}
[@@deriving yojson_of]
(** source_flow_config__source_connector_properties__trendmicro *)

type source_flow_config__source_connector_properties__veeva = {
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
(** source_flow_config__source_connector_properties__veeva *)

type source_flow_config__source_connector_properties__zendesk = {
  object_ : string prop; [@key "object"]  (** object *)
}
[@@deriving yojson_of]
(** source_flow_config__source_connector_properties__zendesk *)

type source_flow_config__source_connector_properties = {
  amplitude :
    source_flow_config__source_connector_properties__amplitude list;
  custom_connector :
    source_flow_config__source_connector_properties__custom_connector
    list;
  datadog :
    source_flow_config__source_connector_properties__datadog list;
  dynatrace :
    source_flow_config__source_connector_properties__dynatrace list;
  google_analytics :
    source_flow_config__source_connector_properties__google_analytics
    list;
  infor_nexus :
    source_flow_config__source_connector_properties__infor_nexus list;
  marketo :
    source_flow_config__source_connector_properties__marketo list;
  s3 : source_flow_config__source_connector_properties__s3 list;
  salesforce :
    source_flow_config__source_connector_properties__salesforce list;
  sapo_data :
    source_flow_config__source_connector_properties__sapo_data list;
  service_now :
    source_flow_config__source_connector_properties__service_now list;
  singular :
    source_flow_config__source_connector_properties__singular list;
  slack :
    source_flow_config__source_connector_properties__slack list;
  trendmicro :
    source_flow_config__source_connector_properties__trendmicro list;
  veeva :
    source_flow_config__source_connector_properties__veeva list;
  zendesk :
    source_flow_config__source_connector_properties__zendesk list;
}
[@@deriving yojson_of]
(** source_flow_config__source_connector_properties *)

type source_flow_config = {
  api_version : string prop option; [@option]  (** api_version *)
  connector_profile_name : string prop option; [@option]
      (** connector_profile_name *)
  connector_type : string prop;  (** connector_type *)
  incremental_pull_config :
    source_flow_config__incremental_pull_config list;
  source_connector_properties :
    source_flow_config__source_connector_properties list;
}
[@@deriving yojson_of]
(** source_flow_config *)

type task__connector_operator = {
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
(** task__connector_operator *)

type task = {
  destination_field : string prop option; [@option]
      (** destination_field *)
  source_fields : string prop list option; [@option]
      (** source_fields *)
  task_properties : (string * string prop) list option; [@option]
      (** task_properties *)
  task_type : string prop;  (** task_type *)
  connector_operator : task__connector_operator list;
}
[@@deriving yojson_of]
(** task *)

type trigger_config__trigger_properties__scheduled = {
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
(** trigger_config__trigger_properties__scheduled *)

type trigger_config__trigger_properties = {
  scheduled : trigger_config__trigger_properties__scheduled list;
}
[@@deriving yojson_of]
(** trigger_config__trigger_properties *)

type trigger_config = {
  trigger_type : string prop;  (** trigger_type *)
  trigger_properties : trigger_config__trigger_properties list;
}
[@@deriving yojson_of]
(** trigger_config *)

type aws_appflow_flow = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  kms_arn : string prop option; [@option]  (** kms_arn *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  destination_flow_config : destination_flow_config list;
  source_flow_config : source_flow_config list;
  task : task list;
  trigger_config : trigger_config list;
}
[@@deriving yojson_of]
(** aws_appflow_flow *)

let destination_flow_config__destination_connector_properties__custom_connector__error_handling_config
    ?bucket_name ?bucket_prefix ?fail_on_first_destination_error () :
    destination_flow_config__destination_connector_properties__custom_connector__error_handling_config
    =
  { bucket_name; bucket_prefix; fail_on_first_destination_error }

let destination_flow_config__destination_connector_properties__custom_connector
    ?custom_properties ?id_field_names ?write_operation_type
    ~entity_name ~error_handling_config () :
    destination_flow_config__destination_connector_properties__custom_connector
    =
  {
    custom_properties;
    entity_name;
    id_field_names;
    write_operation_type;
    error_handling_config;
  }

let destination_flow_config__destination_connector_properties__customer_profiles
    ?object_type_name ~domain_name () :
    destination_flow_config__destination_connector_properties__customer_profiles
    =
  { domain_name; object_type_name }

let destination_flow_config__destination_connector_properties__event_bridge__error_handling_config
    ?bucket_name ?bucket_prefix ?fail_on_first_destination_error () :
    destination_flow_config__destination_connector_properties__event_bridge__error_handling_config
    =
  { bucket_name; bucket_prefix; fail_on_first_destination_error }

let destination_flow_config__destination_connector_properties__event_bridge
    ~object_ ~error_handling_config () :
    destination_flow_config__destination_connector_properties__event_bridge
    =
  { object_; error_handling_config }

let destination_flow_config__destination_connector_properties__honeycode__error_handling_config
    ?bucket_name ?bucket_prefix ?fail_on_first_destination_error () :
    destination_flow_config__destination_connector_properties__honeycode__error_handling_config
    =
  { bucket_name; bucket_prefix; fail_on_first_destination_error }

let destination_flow_config__destination_connector_properties__honeycode
    ~object_ ~error_handling_config () :
    destination_flow_config__destination_connector_properties__honeycode
    =
  { object_; error_handling_config }

let destination_flow_config__destination_connector_properties__lookout_metrics
    () =
  ()

let destination_flow_config__destination_connector_properties__marketo__error_handling_config
    ?bucket_name ?bucket_prefix ?fail_on_first_destination_error () :
    destination_flow_config__destination_connector_properties__marketo__error_handling_config
    =
  { bucket_name; bucket_prefix; fail_on_first_destination_error }

let destination_flow_config__destination_connector_properties__marketo
    ~object_ ~error_handling_config () :
    destination_flow_config__destination_connector_properties__marketo
    =
  { object_; error_handling_config }

let destination_flow_config__destination_connector_properties__redshift__error_handling_config
    ?bucket_name ?bucket_prefix ?fail_on_first_destination_error () :
    destination_flow_config__destination_connector_properties__redshift__error_handling_config
    =
  { bucket_name; bucket_prefix; fail_on_first_destination_error }

let destination_flow_config__destination_connector_properties__redshift
    ?bucket_prefix ~intermediate_bucket_name ~object_
    ~error_handling_config () :
    destination_flow_config__destination_connector_properties__redshift
    =
  {
    bucket_prefix;
    intermediate_bucket_name;
    object_;
    error_handling_config;
  }

let destination_flow_config__destination_connector_properties__s3__s3_output_format_config__aggregation_config
    ?aggregation_type ?target_file_size () :
    destination_flow_config__destination_connector_properties__s3__s3_output_format_config__aggregation_config
    =
  { aggregation_type; target_file_size }

let destination_flow_config__destination_connector_properties__s3__s3_output_format_config__prefix_config
    ?prefix_format ?prefix_type () :
    destination_flow_config__destination_connector_properties__s3__s3_output_format_config__prefix_config
    =
  { prefix_format; prefix_type }

let destination_flow_config__destination_connector_properties__s3__s3_output_format_config
    ?file_type ?preserve_source_data_typing ~aggregation_config
    ~prefix_config () :
    destination_flow_config__destination_connector_properties__s3__s3_output_format_config
    =
  {
    file_type;
    preserve_source_data_typing;
    aggregation_config;
    prefix_config;
  }

let destination_flow_config__destination_connector_properties__s3
    ?bucket_prefix ~bucket_name ~s3_output_format_config () :
    destination_flow_config__destination_connector_properties__s3 =
  { bucket_name; bucket_prefix; s3_output_format_config }

let destination_flow_config__destination_connector_properties__salesforce__error_handling_config
    ?bucket_name ?bucket_prefix ?fail_on_first_destination_error () :
    destination_flow_config__destination_connector_properties__salesforce__error_handling_config
    =
  { bucket_name; bucket_prefix; fail_on_first_destination_error }

let destination_flow_config__destination_connector_properties__salesforce
    ?id_field_names ?write_operation_type ~object_
    ~error_handling_config () :
    destination_flow_config__destination_connector_properties__salesforce
    =
  {
    id_field_names;
    object_;
    write_operation_type;
    error_handling_config;
  }

let destination_flow_config__destination_connector_properties__sapo_data__error_handling_config
    ?bucket_name ?bucket_prefix ?fail_on_first_destination_error () :
    destination_flow_config__destination_connector_properties__sapo_data__error_handling_config
    =
  { bucket_name; bucket_prefix; fail_on_first_destination_error }

let destination_flow_config__destination_connector_properties__sapo_data__success_response_handling_config
    ?bucket_name ?bucket_prefix () :
    destination_flow_config__destination_connector_properties__sapo_data__success_response_handling_config
    =
  { bucket_name; bucket_prefix }

let destination_flow_config__destination_connector_properties__sapo_data
    ?id_field_names ?write_operation_type ~object_path
    ~error_handling_config ~success_response_handling_config () :
    destination_flow_config__destination_connector_properties__sapo_data
    =
  {
    id_field_names;
    object_path;
    write_operation_type;
    error_handling_config;
    success_response_handling_config;
  }

let destination_flow_config__destination_connector_properties__snowflake__error_handling_config
    ?bucket_name ?bucket_prefix ?fail_on_first_destination_error () :
    destination_flow_config__destination_connector_properties__snowflake__error_handling_config
    =
  { bucket_name; bucket_prefix; fail_on_first_destination_error }

let destination_flow_config__destination_connector_properties__snowflake
    ?bucket_prefix ~intermediate_bucket_name ~object_
    ~error_handling_config () :
    destination_flow_config__destination_connector_properties__snowflake
    =
  {
    bucket_prefix;
    intermediate_bucket_name;
    object_;
    error_handling_config;
  }

let destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__aggregation_config
    ?aggregation_type () :
    destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__aggregation_config
    =
  { aggregation_type }

let destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__prefix_config
    ?prefix_format ~prefix_type () :
    destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__prefix_config
    =
  { prefix_format; prefix_type }

let destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config
    ?file_type ~aggregation_config ~prefix_config () :
    destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config
    =
  { file_type; aggregation_config; prefix_config }

let destination_flow_config__destination_connector_properties__upsolver
    ?bucket_prefix ~bucket_name ~s3_output_format_config () :
    destination_flow_config__destination_connector_properties__upsolver
    =
  { bucket_name; bucket_prefix; s3_output_format_config }

let destination_flow_config__destination_connector_properties__zendesk__error_handling_config
    ?bucket_name ?bucket_prefix ?fail_on_first_destination_error () :
    destination_flow_config__destination_connector_properties__zendesk__error_handling_config
    =
  { bucket_name; bucket_prefix; fail_on_first_destination_error }

let destination_flow_config__destination_connector_properties__zendesk
    ?id_field_names ?write_operation_type ~object_
    ~error_handling_config () :
    destination_flow_config__destination_connector_properties__zendesk
    =
  {
    id_field_names;
    object_;
    write_operation_type;
    error_handling_config;
  }

let destination_flow_config__destination_connector_properties
    ~custom_connector ~customer_profiles ~event_bridge ~honeycode
    ~lookout_metrics ~marketo ~redshift ~s3 ~salesforce ~sapo_data
    ~snowflake ~upsolver ~zendesk () :
    destination_flow_config__destination_connector_properties =
  {
    custom_connector;
    customer_profiles;
    event_bridge;
    honeycode;
    lookout_metrics;
    marketo;
    redshift;
    s3;
    salesforce;
    sapo_data;
    snowflake;
    upsolver;
    zendesk;
  }

let destination_flow_config ?api_version ?connector_profile_name
    ~connector_type ~destination_connector_properties () :
    destination_flow_config =
  {
    api_version;
    connector_profile_name;
    connector_type;
    destination_connector_properties;
  }

let source_flow_config__incremental_pull_config
    ?datetime_type_field_name () :
    source_flow_config__incremental_pull_config =
  { datetime_type_field_name }

let source_flow_config__source_connector_properties__amplitude
    ~object_ () :
    source_flow_config__source_connector_properties__amplitude =
  { object_ }

let source_flow_config__source_connector_properties__custom_connector
    ?custom_properties ~entity_name () :
    source_flow_config__source_connector_properties__custom_connector
    =
  { custom_properties; entity_name }

let source_flow_config__source_connector_properties__datadog ~object_
    () : source_flow_config__source_connector_properties__datadog =
  { object_ }

let source_flow_config__source_connector_properties__dynatrace
    ~object_ () :
    source_flow_config__source_connector_properties__dynatrace =
  { object_ }

let source_flow_config__source_connector_properties__google_analytics
    ~object_ () :
    source_flow_config__source_connector_properties__google_analytics
    =
  { object_ }

let source_flow_config__source_connector_properties__infor_nexus
    ~object_ () :
    source_flow_config__source_connector_properties__infor_nexus =
  { object_ }

let source_flow_config__source_connector_properties__marketo ~object_
    () : source_flow_config__source_connector_properties__marketo =
  { object_ }

let source_flow_config__source_connector_properties__s3__s3_input_format_config
    ?s3_input_file_type () :
    source_flow_config__source_connector_properties__s3__s3_input_format_config
    =
  { s3_input_file_type }

let source_flow_config__source_connector_properties__s3 ~bucket_name
    ~bucket_prefix ~s3_input_format_config () :
    source_flow_config__source_connector_properties__s3 =
  { bucket_name; bucket_prefix; s3_input_format_config }

let source_flow_config__source_connector_properties__salesforce
    ?enable_dynamic_field_update ?include_deleted_records ~object_ ()
    : source_flow_config__source_connector_properties__salesforce =
  { enable_dynamic_field_update; include_deleted_records; object_ }

let source_flow_config__source_connector_properties__sapo_data
    ~object_path () :
    source_flow_config__source_connector_properties__sapo_data =
  { object_path }

let source_flow_config__source_connector_properties__service_now
    ~object_ () :
    source_flow_config__source_connector_properties__service_now =
  { object_ }

let source_flow_config__source_connector_properties__singular
    ~object_ () :
    source_flow_config__source_connector_properties__singular =
  { object_ }

let source_flow_config__source_connector_properties__slack ~object_
    () : source_flow_config__source_connector_properties__slack =
  { object_ }

let source_flow_config__source_connector_properties__trendmicro
    ~object_ () :
    source_flow_config__source_connector_properties__trendmicro =
  { object_ }

let source_flow_config__source_connector_properties__veeva
    ?document_type ?include_all_versions ?include_renditions
    ?include_source_files ~object_ () :
    source_flow_config__source_connector_properties__veeva =
  {
    document_type;
    include_all_versions;
    include_renditions;
    include_source_files;
    object_;
  }

let source_flow_config__source_connector_properties__zendesk ~object_
    () : source_flow_config__source_connector_properties__zendesk =
  { object_ }

let source_flow_config__source_connector_properties ~amplitude
    ~custom_connector ~datadog ~dynatrace ~google_analytics
    ~infor_nexus ~marketo ~s3 ~salesforce ~sapo_data ~service_now
    ~singular ~slack ~trendmicro ~veeva ~zendesk () :
    source_flow_config__source_connector_properties =
  {
    amplitude;
    custom_connector;
    datadog;
    dynatrace;
    google_analytics;
    infor_nexus;
    marketo;
    s3;
    salesforce;
    sapo_data;
    service_now;
    singular;
    slack;
    trendmicro;
    veeva;
    zendesk;
  }

let source_flow_config ?api_version ?connector_profile_name
    ~connector_type ~incremental_pull_config
    ~source_connector_properties () : source_flow_config =
  {
    api_version;
    connector_profile_name;
    connector_type;
    incremental_pull_config;
    source_connector_properties;
  }

let task__connector_operator ?amplitude ?custom_connector ?datadog
    ?dynatrace ?google_analytics ?infor_nexus ?marketo ?s3
    ?salesforce ?sapo_data ?service_now ?singular ?slack ?trendmicro
    ?veeva ?zendesk () : task__connector_operator =
  {
    amplitude;
    custom_connector;
    datadog;
    dynatrace;
    google_analytics;
    infor_nexus;
    marketo;
    s3;
    salesforce;
    sapo_data;
    service_now;
    singular;
    slack;
    trendmicro;
    veeva;
    zendesk;
  }

let task ?destination_field ?source_fields ?task_properties
    ~task_type ~connector_operator () : task =
  {
    destination_field;
    source_fields;
    task_properties;
    task_type;
    connector_operator;
  }

let trigger_config__trigger_properties__scheduled ?data_pull_mode
    ?first_execution_from ?schedule_end_time ?schedule_offset
    ?schedule_start_time ?timezone ~schedule_expression () :
    trigger_config__trigger_properties__scheduled =
  {
    data_pull_mode;
    first_execution_from;
    schedule_end_time;
    schedule_expression;
    schedule_offset;
    schedule_start_time;
    timezone;
  }

let trigger_config__trigger_properties ~scheduled () :
    trigger_config__trigger_properties =
  { scheduled }

let trigger_config ~trigger_type ~trigger_properties () :
    trigger_config =
  { trigger_type; trigger_properties }

let aws_appflow_flow ?description ?id ?kms_arn ?tags ?tags_all ~name
    ~destination_flow_config ~source_flow_config ~task
    ~trigger_config () : aws_appflow_flow =
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

let register ?tf_module ?description ?id ?kms_arn ?tags ?tags_all
    ~name ~destination_flow_config ~source_flow_config ~task
    ~trigger_config __resource_id =
  let __resource_type = "aws_appflow_flow" in
  let __resource =
    aws_appflow_flow ?description ?id ?kms_arn ?tags ?tags_all ~name
      ~destination_flow_config ~source_flow_config ~task
      ~trigger_config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
