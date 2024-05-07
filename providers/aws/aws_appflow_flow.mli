(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type destination_flow_config__destination_connector_properties__custom_connector__error_handling_config

val destination_flow_config__destination_connector_properties__custom_connector__error_handling_config :
  ?bucket_name:string prop ->
  ?bucket_prefix:string prop ->
  ?fail_on_first_destination_error:bool prop ->
  unit ->
  destination_flow_config__destination_connector_properties__custom_connector__error_handling_config

type destination_flow_config__destination_connector_properties__custom_connector

val destination_flow_config__destination_connector_properties__custom_connector :
  ?custom_properties:(string * string prop) list ->
  ?id_field_names:string prop list ->
  ?write_operation_type:string prop ->
  ?error_handling_config:
    destination_flow_config__destination_connector_properties__custom_connector__error_handling_config
    list ->
  entity_name:string prop ->
  unit ->
  destination_flow_config__destination_connector_properties__custom_connector

type destination_flow_config__destination_connector_properties__customer_profiles

val destination_flow_config__destination_connector_properties__customer_profiles :
  ?object_type_name:string prop ->
  domain_name:string prop ->
  unit ->
  destination_flow_config__destination_connector_properties__customer_profiles

type destination_flow_config__destination_connector_properties__event_bridge__error_handling_config

val destination_flow_config__destination_connector_properties__event_bridge__error_handling_config :
  ?bucket_name:string prop ->
  ?bucket_prefix:string prop ->
  ?fail_on_first_destination_error:bool prop ->
  unit ->
  destination_flow_config__destination_connector_properties__event_bridge__error_handling_config

type destination_flow_config__destination_connector_properties__event_bridge

val destination_flow_config__destination_connector_properties__event_bridge :
  ?error_handling_config:
    destination_flow_config__destination_connector_properties__event_bridge__error_handling_config
    list ->
  object_:string prop ->
  unit ->
  destination_flow_config__destination_connector_properties__event_bridge

type destination_flow_config__destination_connector_properties__honeycode__error_handling_config

val destination_flow_config__destination_connector_properties__honeycode__error_handling_config :
  ?bucket_name:string prop ->
  ?bucket_prefix:string prop ->
  ?fail_on_first_destination_error:bool prop ->
  unit ->
  destination_flow_config__destination_connector_properties__honeycode__error_handling_config

type destination_flow_config__destination_connector_properties__honeycode

val destination_flow_config__destination_connector_properties__honeycode :
  ?error_handling_config:
    destination_flow_config__destination_connector_properties__honeycode__error_handling_config
    list ->
  object_:string prop ->
  unit ->
  destination_flow_config__destination_connector_properties__honeycode

type destination_flow_config__destination_connector_properties__lookout_metrics

val destination_flow_config__destination_connector_properties__lookout_metrics :
  unit ->
  destination_flow_config__destination_connector_properties__lookout_metrics

type destination_flow_config__destination_connector_properties__marketo__error_handling_config

val destination_flow_config__destination_connector_properties__marketo__error_handling_config :
  ?bucket_name:string prop ->
  ?bucket_prefix:string prop ->
  ?fail_on_first_destination_error:bool prop ->
  unit ->
  destination_flow_config__destination_connector_properties__marketo__error_handling_config

type destination_flow_config__destination_connector_properties__marketo

val destination_flow_config__destination_connector_properties__marketo :
  ?error_handling_config:
    destination_flow_config__destination_connector_properties__marketo__error_handling_config
    list ->
  object_:string prop ->
  unit ->
  destination_flow_config__destination_connector_properties__marketo

type destination_flow_config__destination_connector_properties__redshift__error_handling_config

val destination_flow_config__destination_connector_properties__redshift__error_handling_config :
  ?bucket_name:string prop ->
  ?bucket_prefix:string prop ->
  ?fail_on_first_destination_error:bool prop ->
  unit ->
  destination_flow_config__destination_connector_properties__redshift__error_handling_config

type destination_flow_config__destination_connector_properties__redshift

val destination_flow_config__destination_connector_properties__redshift :
  ?bucket_prefix:string prop ->
  ?error_handling_config:
    destination_flow_config__destination_connector_properties__redshift__error_handling_config
    list ->
  intermediate_bucket_name:string prop ->
  object_:string prop ->
  unit ->
  destination_flow_config__destination_connector_properties__redshift

type destination_flow_config__destination_connector_properties__s3__s3_output_format_config__aggregation_config

val destination_flow_config__destination_connector_properties__s3__s3_output_format_config__aggregation_config :
  ?aggregation_type:string prop ->
  ?target_file_size:float prop ->
  unit ->
  destination_flow_config__destination_connector_properties__s3__s3_output_format_config__aggregation_config

type destination_flow_config__destination_connector_properties__s3__s3_output_format_config__prefix_config

val destination_flow_config__destination_connector_properties__s3__s3_output_format_config__prefix_config :
  ?prefix_format:string prop ->
  ?prefix_type:string prop ->
  unit ->
  destination_flow_config__destination_connector_properties__s3__s3_output_format_config__prefix_config

type destination_flow_config__destination_connector_properties__s3__s3_output_format_config

val destination_flow_config__destination_connector_properties__s3__s3_output_format_config :
  ?file_type:string prop ->
  ?preserve_source_data_typing:bool prop ->
  ?aggregation_config:
    destination_flow_config__destination_connector_properties__s3__s3_output_format_config__aggregation_config
    list ->
  ?prefix_config:
    destination_flow_config__destination_connector_properties__s3__s3_output_format_config__prefix_config
    list ->
  unit ->
  destination_flow_config__destination_connector_properties__s3__s3_output_format_config

type destination_flow_config__destination_connector_properties__s3

val destination_flow_config__destination_connector_properties__s3 :
  ?bucket_prefix:string prop ->
  ?s3_output_format_config:
    destination_flow_config__destination_connector_properties__s3__s3_output_format_config
    list ->
  bucket_name:string prop ->
  unit ->
  destination_flow_config__destination_connector_properties__s3

type destination_flow_config__destination_connector_properties__salesforce__error_handling_config

val destination_flow_config__destination_connector_properties__salesforce__error_handling_config :
  ?bucket_name:string prop ->
  ?bucket_prefix:string prop ->
  ?fail_on_first_destination_error:bool prop ->
  unit ->
  destination_flow_config__destination_connector_properties__salesforce__error_handling_config

type destination_flow_config__destination_connector_properties__salesforce

val destination_flow_config__destination_connector_properties__salesforce :
  ?id_field_names:string prop list ->
  ?write_operation_type:string prop ->
  ?error_handling_config:
    destination_flow_config__destination_connector_properties__salesforce__error_handling_config
    list ->
  object_:string prop ->
  unit ->
  destination_flow_config__destination_connector_properties__salesforce

type destination_flow_config__destination_connector_properties__sapo_data__error_handling_config

val destination_flow_config__destination_connector_properties__sapo_data__error_handling_config :
  ?bucket_name:string prop ->
  ?bucket_prefix:string prop ->
  ?fail_on_first_destination_error:bool prop ->
  unit ->
  destination_flow_config__destination_connector_properties__sapo_data__error_handling_config

type destination_flow_config__destination_connector_properties__sapo_data__success_response_handling_config

val destination_flow_config__destination_connector_properties__sapo_data__success_response_handling_config :
  ?bucket_name:string prop ->
  ?bucket_prefix:string prop ->
  unit ->
  destination_flow_config__destination_connector_properties__sapo_data__success_response_handling_config

type destination_flow_config__destination_connector_properties__sapo_data

val destination_flow_config__destination_connector_properties__sapo_data :
  ?id_field_names:string prop list ->
  ?write_operation_type:string prop ->
  ?error_handling_config:
    destination_flow_config__destination_connector_properties__sapo_data__error_handling_config
    list ->
  ?success_response_handling_config:
    destination_flow_config__destination_connector_properties__sapo_data__success_response_handling_config
    list ->
  object_path:string prop ->
  unit ->
  destination_flow_config__destination_connector_properties__sapo_data

type destination_flow_config__destination_connector_properties__snowflake__error_handling_config

val destination_flow_config__destination_connector_properties__snowflake__error_handling_config :
  ?bucket_name:string prop ->
  ?bucket_prefix:string prop ->
  ?fail_on_first_destination_error:bool prop ->
  unit ->
  destination_flow_config__destination_connector_properties__snowflake__error_handling_config

type destination_flow_config__destination_connector_properties__snowflake

val destination_flow_config__destination_connector_properties__snowflake :
  ?bucket_prefix:string prop ->
  ?error_handling_config:
    destination_flow_config__destination_connector_properties__snowflake__error_handling_config
    list ->
  intermediate_bucket_name:string prop ->
  object_:string prop ->
  unit ->
  destination_flow_config__destination_connector_properties__snowflake

type destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__aggregation_config

val destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__aggregation_config :
  ?aggregation_type:string prop ->
  unit ->
  destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__aggregation_config

type destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__prefix_config

val destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__prefix_config :
  ?prefix_format:string prop ->
  prefix_type:string prop ->
  unit ->
  destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__prefix_config

type destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config

val destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config :
  ?file_type:string prop ->
  ?aggregation_config:
    destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__aggregation_config
    list ->
  prefix_config:
    destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__prefix_config
    list ->
  unit ->
  destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config

type destination_flow_config__destination_connector_properties__upsolver

val destination_flow_config__destination_connector_properties__upsolver :
  ?bucket_prefix:string prop ->
  bucket_name:string prop ->
  s3_output_format_config:
    destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config
    list ->
  unit ->
  destination_flow_config__destination_connector_properties__upsolver

type destination_flow_config__destination_connector_properties__zendesk__error_handling_config

val destination_flow_config__destination_connector_properties__zendesk__error_handling_config :
  ?bucket_name:string prop ->
  ?bucket_prefix:string prop ->
  ?fail_on_first_destination_error:bool prop ->
  unit ->
  destination_flow_config__destination_connector_properties__zendesk__error_handling_config

type destination_flow_config__destination_connector_properties__zendesk

val destination_flow_config__destination_connector_properties__zendesk :
  ?id_field_names:string prop list ->
  ?write_operation_type:string prop ->
  ?error_handling_config:
    destination_flow_config__destination_connector_properties__zendesk__error_handling_config
    list ->
  object_:string prop ->
  unit ->
  destination_flow_config__destination_connector_properties__zendesk

type destination_flow_config__destination_connector_properties

val destination_flow_config__destination_connector_properties :
  ?custom_connector:
    destination_flow_config__destination_connector_properties__custom_connector
    list ->
  ?customer_profiles:
    destination_flow_config__destination_connector_properties__customer_profiles
    list ->
  ?event_bridge:
    destination_flow_config__destination_connector_properties__event_bridge
    list ->
  ?honeycode:
    destination_flow_config__destination_connector_properties__honeycode
    list ->
  ?lookout_metrics:
    destination_flow_config__destination_connector_properties__lookout_metrics
    list ->
  ?marketo:
    destination_flow_config__destination_connector_properties__marketo
    list ->
  ?redshift:
    destination_flow_config__destination_connector_properties__redshift
    list ->
  ?s3:
    destination_flow_config__destination_connector_properties__s3
    list ->
  ?salesforce:
    destination_flow_config__destination_connector_properties__salesforce
    list ->
  ?sapo_data:
    destination_flow_config__destination_connector_properties__sapo_data
    list ->
  ?snowflake:
    destination_flow_config__destination_connector_properties__snowflake
    list ->
  ?upsolver:
    destination_flow_config__destination_connector_properties__upsolver
    list ->
  ?zendesk:
    destination_flow_config__destination_connector_properties__zendesk
    list ->
  unit ->
  destination_flow_config__destination_connector_properties

type destination_flow_config

val destination_flow_config :
  ?api_version:string prop ->
  ?connector_profile_name:string prop ->
  connector_type:string prop ->
  destination_connector_properties:
    destination_flow_config__destination_connector_properties list ->
  unit ->
  destination_flow_config

type source_flow_config__incremental_pull_config

val source_flow_config__incremental_pull_config :
  ?datetime_type_field_name:string prop ->
  unit ->
  source_flow_config__incremental_pull_config

type source_flow_config__source_connector_properties__amplitude

val source_flow_config__source_connector_properties__amplitude :
  object_:string prop ->
  unit ->
  source_flow_config__source_connector_properties__amplitude

type source_flow_config__source_connector_properties__custom_connector

val source_flow_config__source_connector_properties__custom_connector :
  ?custom_properties:(string * string prop) list ->
  entity_name:string prop ->
  unit ->
  source_flow_config__source_connector_properties__custom_connector

type source_flow_config__source_connector_properties__datadog

val source_flow_config__source_connector_properties__datadog :
  object_:string prop ->
  unit ->
  source_flow_config__source_connector_properties__datadog

type source_flow_config__source_connector_properties__dynatrace

val source_flow_config__source_connector_properties__dynatrace :
  object_:string prop ->
  unit ->
  source_flow_config__source_connector_properties__dynatrace

type source_flow_config__source_connector_properties__google_analytics

val source_flow_config__source_connector_properties__google_analytics :
  object_:string prop ->
  unit ->
  source_flow_config__source_connector_properties__google_analytics

type source_flow_config__source_connector_properties__infor_nexus

val source_flow_config__source_connector_properties__infor_nexus :
  object_:string prop ->
  unit ->
  source_flow_config__source_connector_properties__infor_nexus

type source_flow_config__source_connector_properties__marketo

val source_flow_config__source_connector_properties__marketo :
  object_:string prop ->
  unit ->
  source_flow_config__source_connector_properties__marketo

type source_flow_config__source_connector_properties__s3__s3_input_format_config

val source_flow_config__source_connector_properties__s3__s3_input_format_config :
  ?s3_input_file_type:string prop ->
  unit ->
  source_flow_config__source_connector_properties__s3__s3_input_format_config

type source_flow_config__source_connector_properties__s3

val source_flow_config__source_connector_properties__s3 :
  ?s3_input_format_config:
    source_flow_config__source_connector_properties__s3__s3_input_format_config
    list ->
  bucket_name:string prop ->
  bucket_prefix:string prop ->
  unit ->
  source_flow_config__source_connector_properties__s3

type source_flow_config__source_connector_properties__salesforce

val source_flow_config__source_connector_properties__salesforce :
  ?enable_dynamic_field_update:bool prop ->
  ?include_deleted_records:bool prop ->
  object_:string prop ->
  unit ->
  source_flow_config__source_connector_properties__salesforce

type source_flow_config__source_connector_properties__sapo_data

val source_flow_config__source_connector_properties__sapo_data :
  object_path:string prop ->
  unit ->
  source_flow_config__source_connector_properties__sapo_data

type source_flow_config__source_connector_properties__service_now

val source_flow_config__source_connector_properties__service_now :
  object_:string prop ->
  unit ->
  source_flow_config__source_connector_properties__service_now

type source_flow_config__source_connector_properties__singular

val source_flow_config__source_connector_properties__singular :
  object_:string prop ->
  unit ->
  source_flow_config__source_connector_properties__singular

type source_flow_config__source_connector_properties__slack

val source_flow_config__source_connector_properties__slack :
  object_:string prop ->
  unit ->
  source_flow_config__source_connector_properties__slack

type source_flow_config__source_connector_properties__trendmicro

val source_flow_config__source_connector_properties__trendmicro :
  object_:string prop ->
  unit ->
  source_flow_config__source_connector_properties__trendmicro

type source_flow_config__source_connector_properties__veeva

val source_flow_config__source_connector_properties__veeva :
  ?document_type:string prop ->
  ?include_all_versions:bool prop ->
  ?include_renditions:bool prop ->
  ?include_source_files:bool prop ->
  object_:string prop ->
  unit ->
  source_flow_config__source_connector_properties__veeva

type source_flow_config__source_connector_properties__zendesk

val source_flow_config__source_connector_properties__zendesk :
  object_:string prop ->
  unit ->
  source_flow_config__source_connector_properties__zendesk

type source_flow_config__source_connector_properties

val source_flow_config__source_connector_properties :
  ?amplitude:
    source_flow_config__source_connector_properties__amplitude list ->
  ?custom_connector:
    source_flow_config__source_connector_properties__custom_connector
    list ->
  ?datadog:
    source_flow_config__source_connector_properties__datadog list ->
  ?dynatrace:
    source_flow_config__source_connector_properties__dynatrace list ->
  ?google_analytics:
    source_flow_config__source_connector_properties__google_analytics
    list ->
  ?infor_nexus:
    source_flow_config__source_connector_properties__infor_nexus list ->
  ?marketo:
    source_flow_config__source_connector_properties__marketo list ->
  ?s3:source_flow_config__source_connector_properties__s3 list ->
  ?salesforce:
    source_flow_config__source_connector_properties__salesforce list ->
  ?sapo_data:
    source_flow_config__source_connector_properties__sapo_data list ->
  ?service_now:
    source_flow_config__source_connector_properties__service_now list ->
  ?singular:
    source_flow_config__source_connector_properties__singular list ->
  ?slack:source_flow_config__source_connector_properties__slack list ->
  ?trendmicro:
    source_flow_config__source_connector_properties__trendmicro list ->
  ?veeva:source_flow_config__source_connector_properties__veeva list ->
  ?zendesk:
    source_flow_config__source_connector_properties__zendesk list ->
  unit ->
  source_flow_config__source_connector_properties

type source_flow_config

val source_flow_config :
  ?api_version:string prop ->
  ?connector_profile_name:string prop ->
  ?incremental_pull_config:
    source_flow_config__incremental_pull_config list ->
  connector_type:string prop ->
  source_connector_properties:
    source_flow_config__source_connector_properties list ->
  unit ->
  source_flow_config

type task__connector_operator

val task__connector_operator :
  ?amplitude:string prop ->
  ?custom_connector:string prop ->
  ?datadog:string prop ->
  ?dynatrace:string prop ->
  ?google_analytics:string prop ->
  ?infor_nexus:string prop ->
  ?marketo:string prop ->
  ?s3:string prop ->
  ?salesforce:string prop ->
  ?sapo_data:string prop ->
  ?service_now:string prop ->
  ?singular:string prop ->
  ?slack:string prop ->
  ?trendmicro:string prop ->
  ?veeva:string prop ->
  ?zendesk:string prop ->
  unit ->
  task__connector_operator

type task

val task :
  ?destination_field:string prop ->
  ?source_fields:string prop list ->
  ?task_properties:(string * string prop) list ->
  ?connector_operator:task__connector_operator list ->
  task_type:string prop ->
  unit ->
  task

type trigger_config__trigger_properties__scheduled

val trigger_config__trigger_properties__scheduled :
  ?data_pull_mode:string prop ->
  ?first_execution_from:string prop ->
  ?schedule_end_time:string prop ->
  ?schedule_offset:float prop ->
  ?schedule_start_time:string prop ->
  ?timezone:string prop ->
  schedule_expression:string prop ->
  unit ->
  trigger_config__trigger_properties__scheduled

type trigger_config__trigger_properties

val trigger_config__trigger_properties :
  ?scheduled:trigger_config__trigger_properties__scheduled list ->
  unit ->
  trigger_config__trigger_properties

type trigger_config

val trigger_config :
  ?trigger_properties:trigger_config__trigger_properties list ->
  trigger_type:string prop ->
  unit ->
  trigger_config

type aws_appflow_flow

val aws_appflow_flow :
  ?description:string prop ->
  ?id:string prop ->
  ?kms_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  destination_flow_config:destination_flow_config list ->
  source_flow_config:source_flow_config list ->
  task:task list ->
  trigger_config:trigger_config list ->
  unit ->
  aws_appflow_flow

val yojson_of_aws_appflow_flow : aws_appflow_flow -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  flow_status : string prop;
  id : string prop;
  kms_arn : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?kms_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  destination_flow_config:destination_flow_config list ->
  source_flow_config:source_flow_config list ->
  task:task list ->
  trigger_config:trigger_config list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?kms_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  destination_flow_config:destination_flow_config list ->
  source_flow_config:source_flow_config list ->
  task:task list ->
  trigger_config:trigger_config list ->
  string ->
  t Tf_core.resource
