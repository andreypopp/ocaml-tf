(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_monitor_data_collection_rule__data_flow = {
  built_in_transform : string option; [@option]
      (** built_in_transform *)
  destinations : string list;  (** destinations *)
  output_stream : string option; [@option]  (** output_stream *)
  streams : string list;  (** streams *)
  transform_kql : string option; [@option]  (** transform_kql *)
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_rule__data_flow *)

type azurerm_monitor_data_collection_rule__data_sources__data_import__event_hub_data_source = {
  consumer_group : string option; [@option]  (** consumer_group *)
  name : string;  (** name *)
  stream : string;  (** stream *)
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_rule__data_sources__data_import__event_hub_data_source *)

type azurerm_monitor_data_collection_rule__data_sources__data_import = {
  event_hub_data_source :
    azurerm_monitor_data_collection_rule__data_sources__data_import__event_hub_data_source
    list;
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_rule__data_sources__data_import *)

type azurerm_monitor_data_collection_rule__data_sources__extension = {
  extension_json : string option; [@option]  (** extension_json *)
  extension_name : string;  (** extension_name *)
  input_data_sources : string list option; [@option]
      (** input_data_sources *)
  name : string;  (** name *)
  streams : string list;  (** streams *)
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_rule__data_sources__extension *)

type azurerm_monitor_data_collection_rule__data_sources__iis_log = {
  log_directories : string list option; [@option]
      (** log_directories *)
  name : string;  (** name *)
  streams : string list;  (** streams *)
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_rule__data_sources__iis_log *)

type azurerm_monitor_data_collection_rule__data_sources__log_file__settings__text = {
  record_start_timestamp_format : string;
      (** record_start_timestamp_format *)
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_rule__data_sources__log_file__settings__text *)

type azurerm_monitor_data_collection_rule__data_sources__log_file__settings = {
  text :
    azurerm_monitor_data_collection_rule__data_sources__log_file__settings__text
    list;
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_rule__data_sources__log_file__settings *)

type azurerm_monitor_data_collection_rule__data_sources__log_file = {
  file_patterns : string list;  (** file_patterns *)
  format : string;  (** format *)
  name : string;  (** name *)
  streams : string list;  (** streams *)
  settings :
    azurerm_monitor_data_collection_rule__data_sources__log_file__settings
    list;
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_rule__data_sources__log_file *)

type azurerm_monitor_data_collection_rule__data_sources__performance_counter = {
  counter_specifiers : string list;  (** counter_specifiers *)
  name : string;  (** name *)
  sampling_frequency_in_seconds : float;
      (** sampling_frequency_in_seconds *)
  streams : string list;  (** streams *)
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_rule__data_sources__performance_counter *)

type azurerm_monitor_data_collection_rule__data_sources__platform_telemetry = {
  name : string;  (** name *)
  streams : string list;  (** streams *)
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_rule__data_sources__platform_telemetry *)

type azurerm_monitor_data_collection_rule__data_sources__prometheus_forwarder__label_include_filter = {
  label : string;  (** label *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_rule__data_sources__prometheus_forwarder__label_include_filter *)

type azurerm_monitor_data_collection_rule__data_sources__prometheus_forwarder = {
  name : string;  (** name *)
  streams : string list;  (** streams *)
  label_include_filter :
    azurerm_monitor_data_collection_rule__data_sources__prometheus_forwarder__label_include_filter
    list;
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_rule__data_sources__prometheus_forwarder *)

type azurerm_monitor_data_collection_rule__data_sources__syslog = {
  facility_names : string list;  (** facility_names *)
  log_levels : string list;  (** log_levels *)
  name : string;  (** name *)
  streams : string list option; [@option]  (** streams *)
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_rule__data_sources__syslog *)

type azurerm_monitor_data_collection_rule__data_sources__windows_event_log = {
  name : string;  (** name *)
  streams : string list;  (** streams *)
  x_path_queries : string list;  (** x_path_queries *)
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_rule__data_sources__windows_event_log *)

type azurerm_monitor_data_collection_rule__data_sources__windows_firewall_log = {
  name : string;  (** name *)
  streams : string list;  (** streams *)
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_rule__data_sources__windows_firewall_log *)

type azurerm_monitor_data_collection_rule__data_sources = {
  data_import :
    azurerm_monitor_data_collection_rule__data_sources__data_import
    list;
  extension :
    azurerm_monitor_data_collection_rule__data_sources__extension
    list;
  iis_log :
    azurerm_monitor_data_collection_rule__data_sources__iis_log list;
  log_file :
    azurerm_monitor_data_collection_rule__data_sources__log_file list;
  performance_counter :
    azurerm_monitor_data_collection_rule__data_sources__performance_counter
    list;
  platform_telemetry :
    azurerm_monitor_data_collection_rule__data_sources__platform_telemetry
    list;
  prometheus_forwarder :
    azurerm_monitor_data_collection_rule__data_sources__prometheus_forwarder
    list;
  syslog :
    azurerm_monitor_data_collection_rule__data_sources__syslog list;
  windows_event_log :
    azurerm_monitor_data_collection_rule__data_sources__windows_event_log
    list;
  windows_firewall_log :
    azurerm_monitor_data_collection_rule__data_sources__windows_firewall_log
    list;
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_rule__data_sources *)

type azurerm_monitor_data_collection_rule__destinations__azure_monitor_metrics = {
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_rule__destinations__azure_monitor_metrics *)

type azurerm_monitor_data_collection_rule__destinations__event_hub = {
  event_hub_id : string;  (** event_hub_id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_rule__destinations__event_hub *)

type azurerm_monitor_data_collection_rule__destinations__event_hub_direct = {
  event_hub_id : string;  (** event_hub_id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_rule__destinations__event_hub_direct *)

type azurerm_monitor_data_collection_rule__destinations__log_analytics = {
  name : string;  (** name *)
  workspace_resource_id : string;  (** workspace_resource_id *)
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_rule__destinations__log_analytics *)

type azurerm_monitor_data_collection_rule__destinations__monitor_account = {
  monitor_account_id : string;  (** monitor_account_id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_rule__destinations__monitor_account *)

type azurerm_monitor_data_collection_rule__destinations__storage_blob = {
  container_name : string;  (** container_name *)
  name : string;  (** name *)
  storage_account_id : string;  (** storage_account_id *)
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_rule__destinations__storage_blob *)

type azurerm_monitor_data_collection_rule__destinations__storage_blob_direct = {
  container_name : string;  (** container_name *)
  name : string;  (** name *)
  storage_account_id : string;  (** storage_account_id *)
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_rule__destinations__storage_blob_direct *)

type azurerm_monitor_data_collection_rule__destinations__storage_table_direct = {
  name : string;  (** name *)
  storage_account_id : string;  (** storage_account_id *)
  table_name : string;  (** table_name *)
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_rule__destinations__storage_table_direct *)

type azurerm_monitor_data_collection_rule__destinations = {
  azure_monitor_metrics :
    azurerm_monitor_data_collection_rule__destinations__azure_monitor_metrics
    list;
  event_hub :
    azurerm_monitor_data_collection_rule__destinations__event_hub
    list;
  event_hub_direct :
    azurerm_monitor_data_collection_rule__destinations__event_hub_direct
    list;
  log_analytics :
    azurerm_monitor_data_collection_rule__destinations__log_analytics
    list;
  monitor_account :
    azurerm_monitor_data_collection_rule__destinations__monitor_account
    list;
  storage_blob :
    azurerm_monitor_data_collection_rule__destinations__storage_blob
    list;
  storage_blob_direct :
    azurerm_monitor_data_collection_rule__destinations__storage_blob_direct
    list;
  storage_table_direct :
    azurerm_monitor_data_collection_rule__destinations__storage_table_direct
    list;
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_rule__destinations *)

type azurerm_monitor_data_collection_rule__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_rule__identity *)

type azurerm_monitor_data_collection_rule__stream_declaration__column = {
  name : string;  (** name *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_rule__stream_declaration__column *)

type azurerm_monitor_data_collection_rule__stream_declaration = {
  stream_name : string;  (** stream_name *)
  column :
    azurerm_monitor_data_collection_rule__stream_declaration__column
    list;
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_rule__stream_declaration *)

type azurerm_monitor_data_collection_rule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_rule__timeouts *)

type azurerm_monitor_data_collection_rule = {
  data_collection_endpoint_id : string option; [@option]
      (** data_collection_endpoint_id *)
  description : string option; [@option]  (** description *)
  kind : string option; [@option]  (** kind *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  data_flow : azurerm_monitor_data_collection_rule__data_flow list;
  data_sources :
    azurerm_monitor_data_collection_rule__data_sources list;
  destinations :
    azurerm_monitor_data_collection_rule__destinations list;
  identity : azurerm_monitor_data_collection_rule__identity list;
  stream_declaration :
    azurerm_monitor_data_collection_rule__stream_declaration list;
  timeouts : azurerm_monitor_data_collection_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_rule *)

let azurerm_monitor_data_collection_rule ?data_collection_endpoint_id
    ?description ?kind ?tags ?timeouts ~location ~name
    ~resource_group_name ~data_flow ~data_sources ~destinations
    ~identity ~stream_declaration __resource_id =
  let __resource_type = "azurerm_monitor_data_collection_rule" in
  let __resource =
    {
      data_collection_endpoint_id;
      description;
      kind;
      location;
      name;
      resource_group_name;
      tags;
      data_flow;
      data_sources;
      destinations;
      identity;
      stream_declaration;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_monitor_data_collection_rule __resource);
  ()
