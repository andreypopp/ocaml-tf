(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type data_flow

val data_flow :
  ?built_in_transform:string prop ->
  ?output_stream:string prop ->
  ?transform_kql:string prop ->
  destinations:string prop list ->
  streams:string prop list ->
  unit ->
  data_flow

type data_sources__data_import__event_hub_data_source

val data_sources__data_import__event_hub_data_source :
  ?consumer_group:string prop ->
  name:string prop ->
  stream:string prop ->
  unit ->
  data_sources__data_import__event_hub_data_source

type data_sources__data_import

val data_sources__data_import :
  event_hub_data_source:
    data_sources__data_import__event_hub_data_source list ->
  unit ->
  data_sources__data_import

type data_sources__extension

val data_sources__extension :
  ?extension_json:string prop ->
  ?input_data_sources:string prop list ->
  extension_name:string prop ->
  name:string prop ->
  streams:string prop list ->
  unit ->
  data_sources__extension

type data_sources__iis_log

val data_sources__iis_log :
  ?log_directories:string prop list ->
  name:string prop ->
  streams:string prop list ->
  unit ->
  data_sources__iis_log

type data_sources__log_file__settings__text

val data_sources__log_file__settings__text :
  record_start_timestamp_format:string prop ->
  unit ->
  data_sources__log_file__settings__text

type data_sources__log_file__settings

val data_sources__log_file__settings :
  text:data_sources__log_file__settings__text list ->
  unit ->
  data_sources__log_file__settings

type data_sources__log_file

val data_sources__log_file :
  ?settings:data_sources__log_file__settings list ->
  file_patterns:string prop list ->
  format:string prop ->
  name:string prop ->
  streams:string prop list ->
  unit ->
  data_sources__log_file

type data_sources__performance_counter

val data_sources__performance_counter :
  counter_specifiers:string prop list ->
  name:string prop ->
  sampling_frequency_in_seconds:float prop ->
  streams:string prop list ->
  unit ->
  data_sources__performance_counter

type data_sources__platform_telemetry

val data_sources__platform_telemetry :
  name:string prop ->
  streams:string prop list ->
  unit ->
  data_sources__platform_telemetry

type data_sources__prometheus_forwarder__label_include_filter

val data_sources__prometheus_forwarder__label_include_filter :
  label:string prop ->
  value:string prop ->
  unit ->
  data_sources__prometheus_forwarder__label_include_filter

type data_sources__prometheus_forwarder

val data_sources__prometheus_forwarder :
  name:string prop ->
  streams:string prop list ->
  label_include_filter:
    data_sources__prometheus_forwarder__label_include_filter list ->
  unit ->
  data_sources__prometheus_forwarder

type data_sources__syslog

val data_sources__syslog :
  ?streams:string prop list ->
  facility_names:string prop list ->
  log_levels:string prop list ->
  name:string prop ->
  unit ->
  data_sources__syslog

type data_sources__windows_event_log

val data_sources__windows_event_log :
  name:string prop ->
  streams:string prop list ->
  x_path_queries:string prop list ->
  unit ->
  data_sources__windows_event_log

type data_sources__windows_firewall_log

val data_sources__windows_firewall_log :
  name:string prop ->
  streams:string prop list ->
  unit ->
  data_sources__windows_firewall_log

type data_sources

val data_sources :
  ?data_import:data_sources__data_import list ->
  ?extension:data_sources__extension list ->
  ?iis_log:data_sources__iis_log list ->
  ?log_file:data_sources__log_file list ->
  ?performance_counter:data_sources__performance_counter list ->
  ?platform_telemetry:data_sources__platform_telemetry list ->
  ?prometheus_forwarder:data_sources__prometheus_forwarder list ->
  ?syslog:data_sources__syslog list ->
  ?windows_event_log:data_sources__windows_event_log list ->
  ?windows_firewall_log:data_sources__windows_firewall_log list ->
  unit ->
  data_sources

type destinations__azure_monitor_metrics

val destinations__azure_monitor_metrics :
  name:string prop -> unit -> destinations__azure_monitor_metrics

type destinations__event_hub

val destinations__event_hub :
  event_hub_id:string prop ->
  name:string prop ->
  unit ->
  destinations__event_hub

type destinations__event_hub_direct

val destinations__event_hub_direct :
  event_hub_id:string prop ->
  name:string prop ->
  unit ->
  destinations__event_hub_direct

type destinations__log_analytics

val destinations__log_analytics :
  name:string prop ->
  workspace_resource_id:string prop ->
  unit ->
  destinations__log_analytics

type destinations__monitor_account

val destinations__monitor_account :
  monitor_account_id:string prop ->
  name:string prop ->
  unit ->
  destinations__monitor_account

type destinations__storage_blob

val destinations__storage_blob :
  container_name:string prop ->
  name:string prop ->
  storage_account_id:string prop ->
  unit ->
  destinations__storage_blob

type destinations__storage_blob_direct

val destinations__storage_blob_direct :
  container_name:string prop ->
  name:string prop ->
  storage_account_id:string prop ->
  unit ->
  destinations__storage_blob_direct

type destinations__storage_table_direct

val destinations__storage_table_direct :
  name:string prop ->
  storage_account_id:string prop ->
  table_name:string prop ->
  unit ->
  destinations__storage_table_direct

type destinations

val destinations :
  ?azure_monitor_metrics:destinations__azure_monitor_metrics list ->
  ?event_hub:destinations__event_hub list ->
  ?event_hub_direct:destinations__event_hub_direct list ->
  ?log_analytics:destinations__log_analytics list ->
  ?monitor_account:destinations__monitor_account list ->
  ?storage_blob:destinations__storage_blob list ->
  ?storage_blob_direct:destinations__storage_blob_direct list ->
  ?storage_table_direct:destinations__storage_table_direct list ->
  unit ->
  destinations

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type stream_declaration__column

val stream_declaration__column :
  name:string prop ->
  type_:string prop ->
  unit ->
  stream_declaration__column

type stream_declaration

val stream_declaration :
  stream_name:string prop ->
  column:stream_declaration__column list ->
  unit ->
  stream_declaration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_monitor_data_collection_rule

val azurerm_monitor_data_collection_rule :
  ?data_collection_endpoint_id:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?kind:string prop ->
  ?tags:(string * string prop) list ->
  ?data_sources:data_sources list ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  data_flow:data_flow list ->
  destinations:destinations list ->
  stream_declaration:stream_declaration list ->
  unit ->
  azurerm_monitor_data_collection_rule

val yojson_of_azurerm_monitor_data_collection_rule :
  azurerm_monitor_data_collection_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  data_collection_endpoint_id : string prop;
  description : string prop;
  id : string prop;
  immutable_id : string prop;
  kind : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?data_collection_endpoint_id:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?kind:string prop ->
  ?tags:(string * string prop) list ->
  ?data_sources:data_sources list ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  data_flow:data_flow list ->
  destinations:destinations list ->
  stream_declaration:stream_declaration list ->
  string ->
  t

val make :
  ?data_collection_endpoint_id:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?kind:string prop ->
  ?tags:(string * string prop) list ->
  ?data_sources:data_sources list ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  data_flow:data_flow list ->
  destinations:destinations list ->
  stream_declaration:stream_declaration list ->
  string ->
  t Tf_core.resource
