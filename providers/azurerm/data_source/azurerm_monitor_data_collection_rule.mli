(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type data_flow = {
  built_in_transform : string prop;  (** built_in_transform *)
  destinations : string prop list;  (** destinations *)
  output_stream : string prop;  (** output_stream *)
  streams : string prop list;  (** streams *)
  transform_kql : string prop;  (** transform_kql *)
}

type data_sources__windows_firewall_log = {
  name : string prop;  (** name *)
  streams : string prop list;  (** streams *)
}

type data_sources__windows_event_log = {
  name : string prop;  (** name *)
  streams : string prop list;  (** streams *)
  x_path_queries : string prop list;  (** x_path_queries *)
}

type data_sources__syslog = {
  facility_names : string prop list;  (** facility_names *)
  log_levels : string prop list;  (** log_levels *)
  name : string prop;  (** name *)
  streams : string prop list;  (** streams *)
}

type data_sources__prometheus_forwarder__label_include_filter = {
  label : string prop;  (** label *)
  value : string prop;  (** value *)
}

type data_sources__prometheus_forwarder = {
  label_include_filter :
    data_sources__prometheus_forwarder__label_include_filter list;
      (** label_include_filter *)
  name : string prop;  (** name *)
  streams : string prop list;  (** streams *)
}

type data_sources__platform_telemetry = {
  name : string prop;  (** name *)
  streams : string prop list;  (** streams *)
}

type data_sources__performance_counter = {
  counter_specifiers : string prop list;  (** counter_specifiers *)
  name : string prop;  (** name *)
  sampling_frequency_in_seconds : float prop;
      (** sampling_frequency_in_seconds *)
  streams : string prop list;  (** streams *)
}

type data_sources__log_file__settings__text = {
  record_start_timestamp_format : string prop;
      (** record_start_timestamp_format *)
}

type data_sources__log_file__settings = {
  text : data_sources__log_file__settings__text list;  (** text *)
}

type data_sources__log_file = {
  file_patterns : string prop list;  (** file_patterns *)
  format : string prop;  (** format *)
  name : string prop;  (** name *)
  settings : data_sources__log_file__settings list;  (** settings *)
  streams : string prop list;  (** streams *)
}

type data_sources__iis_log = {
  log_directories : string prop list;  (** log_directories *)
  name : string prop;  (** name *)
  streams : string prop list;  (** streams *)
}

type data_sources__extension = {
  extension_json : string prop;  (** extension_json *)
  extension_name : string prop;  (** extension_name *)
  input_data_sources : string prop list;  (** input_data_sources *)
  name : string prop;  (** name *)
  streams : string prop list;  (** streams *)
}

type data_sources__data_import__event_hub_data_source = {
  consumer_group : string prop;  (** consumer_group *)
  name : string prop;  (** name *)
  stream : string prop;  (** stream *)
}

type data_sources__data_import = {
  event_hub_data_source :
    data_sources__data_import__event_hub_data_source list;
      (** event_hub_data_source *)
}

type data_sources = {
  data_import : data_sources__data_import list;  (** data_import *)
  extension : data_sources__extension list;  (** extension *)
  iis_log : data_sources__iis_log list;  (** iis_log *)
  log_file : data_sources__log_file list;  (** log_file *)
  performance_counter : data_sources__performance_counter list;
      (** performance_counter *)
  platform_telemetry : data_sources__platform_telemetry list;
      (** platform_telemetry *)
  prometheus_forwarder : data_sources__prometheus_forwarder list;
      (** prometheus_forwarder *)
  syslog : data_sources__syslog list;  (** syslog *)
  windows_event_log : data_sources__windows_event_log list;
      (** windows_event_log *)
  windows_firewall_log : data_sources__windows_firewall_log list;
      (** windows_firewall_log *)
}

type destinations__storage_table_direct = {
  name : string prop;  (** name *)
  storage_account_id : string prop;  (** storage_account_id *)
  table_name : string prop;  (** table_name *)
}

type destinations__storage_blob_direct = {
  container_name : string prop;  (** container_name *)
  name : string prop;  (** name *)
  storage_account_id : string prop;  (** storage_account_id *)
}

type destinations__storage_blob = {
  container_name : string prop;  (** container_name *)
  name : string prop;  (** name *)
  storage_account_id : string prop;  (** storage_account_id *)
}

type destinations__monitor_account = {
  monitor_account_id : string prop;  (** monitor_account_id *)
  name : string prop;  (** name *)
}

type destinations__log_analytics = {
  name : string prop;  (** name *)
  workspace_resource_id : string prop;  (** workspace_resource_id *)
}

type destinations__event_hub_direct = {
  event_hub_id : string prop;  (** event_hub_id *)
  name : string prop;  (** name *)
}

type destinations__event_hub = {
  event_hub_id : string prop;  (** event_hub_id *)
  name : string prop;  (** name *)
}

type destinations__azure_monitor_metrics = {
  name : string prop;  (** name *)
}

type destinations = {
  azure_monitor_metrics : destinations__azure_monitor_metrics list;
      (** azure_monitor_metrics *)
  event_hub : destinations__event_hub list;  (** event_hub *)
  event_hub_direct : destinations__event_hub_direct list;
      (** event_hub_direct *)
  log_analytics : destinations__log_analytics list;
      (** log_analytics *)
  monitor_account : destinations__monitor_account list;
      (** monitor_account *)
  storage_blob : destinations__storage_blob list;
      (** storage_blob *)
  storage_blob_direct : destinations__storage_blob_direct list;
      (** storage_blob_direct *)
  storage_table_direct : destinations__storage_table_direct list;
      (** storage_table_direct *)
}

type identity = {
  identity_ids : string prop list;  (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type stream_declaration__column = {
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}

type stream_declaration = {
  column : stream_declaration__column list;  (** column *)
  stream_name : string prop;  (** stream_name *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_monitor_data_collection_rule

val azurerm_monitor_data_collection_rule :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_monitor_data_collection_rule

val yojson_of_azurerm_monitor_data_collection_rule :
  azurerm_monitor_data_collection_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  data_collection_endpoint_id : string prop;
  data_flow : data_flow list prop;
  data_sources : data_sources list prop;
  description : string prop;
  destinations : destinations list prop;
  id : string prop;
  identity : identity list prop;
  immutable_id : string prop;
  kind : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  stream_declaration : stream_declaration list prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
