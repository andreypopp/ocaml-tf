(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type data_flow = {
  built_in_transform : string prop option; [@option]
      (** built_in_transform *)
  destinations : string prop list;  (** destinations *)
  output_stream : string prop option; [@option]  (** output_stream *)
  streams : string prop list;  (** streams *)
  transform_kql : string prop option; [@option]  (** transform_kql *)
}
[@@deriving yojson_of]
(** data_flow *)

type data_sources__data_import__event_hub_data_source = {
  consumer_group : string prop option; [@option]
      (** consumer_group *)
  name : string prop;  (** name *)
  stream : string prop;  (** stream *)
}
[@@deriving yojson_of]
(** data_sources__data_import__event_hub_data_source *)

type data_sources__data_import = {
  event_hub_data_source :
    data_sources__data_import__event_hub_data_source list;
}
[@@deriving yojson_of]
(** data_sources__data_import *)

type data_sources__extension = {
  extension_json : string prop option; [@option]
      (** extension_json *)
  extension_name : string prop;  (** extension_name *)
  input_data_sources : string prop list option; [@option]
      (** input_data_sources *)
  name : string prop;  (** name *)
  streams : string prop list;  (** streams *)
}
[@@deriving yojson_of]
(** data_sources__extension *)

type data_sources__iis_log = {
  log_directories : string prop list option; [@option]
      (** log_directories *)
  name : string prop;  (** name *)
  streams : string prop list;  (** streams *)
}
[@@deriving yojson_of]
(** data_sources__iis_log *)

type data_sources__log_file__settings__text = {
  record_start_timestamp_format : string prop;
      (** record_start_timestamp_format *)
}
[@@deriving yojson_of]
(** data_sources__log_file__settings__text *)

type data_sources__log_file__settings = {
  text : data_sources__log_file__settings__text list;
}
[@@deriving yojson_of]
(** data_sources__log_file__settings *)

type data_sources__log_file = {
  file_patterns : string prop list;  (** file_patterns *)
  format : string prop;  (** format *)
  name : string prop;  (** name *)
  streams : string prop list;  (** streams *)
  settings : data_sources__log_file__settings list;
}
[@@deriving yojson_of]
(** data_sources__log_file *)

type data_sources__performance_counter = {
  counter_specifiers : string prop list;  (** counter_specifiers *)
  name : string prop;  (** name *)
  sampling_frequency_in_seconds : float prop;
      (** sampling_frequency_in_seconds *)
  streams : string prop list;  (** streams *)
}
[@@deriving yojson_of]
(** data_sources__performance_counter *)

type data_sources__platform_telemetry = {
  name : string prop;  (** name *)
  streams : string prop list;  (** streams *)
}
[@@deriving yojson_of]
(** data_sources__platform_telemetry *)

type data_sources__prometheus_forwarder__label_include_filter = {
  label : string prop;  (** label *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** data_sources__prometheus_forwarder__label_include_filter *)

type data_sources__prometheus_forwarder = {
  name : string prop;  (** name *)
  streams : string prop list;  (** streams *)
  label_include_filter :
    data_sources__prometheus_forwarder__label_include_filter list;
}
[@@deriving yojson_of]
(** data_sources__prometheus_forwarder *)

type data_sources__syslog = {
  facility_names : string prop list;  (** facility_names *)
  log_levels : string prop list;  (** log_levels *)
  name : string prop;  (** name *)
  streams : string prop list option; [@option]  (** streams *)
}
[@@deriving yojson_of]
(** data_sources__syslog *)

type data_sources__windows_event_log = {
  name : string prop;  (** name *)
  streams : string prop list;  (** streams *)
  x_path_queries : string prop list;  (** x_path_queries *)
}
[@@deriving yojson_of]
(** data_sources__windows_event_log *)

type data_sources__windows_firewall_log = {
  name : string prop;  (** name *)
  streams : string prop list;  (** streams *)
}
[@@deriving yojson_of]
(** data_sources__windows_firewall_log *)

type data_sources = {
  data_import : data_sources__data_import list;
  extension : data_sources__extension list;
  iis_log : data_sources__iis_log list;
  log_file : data_sources__log_file list;
  performance_counter : data_sources__performance_counter list;
  platform_telemetry : data_sources__platform_telemetry list;
  prometheus_forwarder : data_sources__prometheus_forwarder list;
  syslog : data_sources__syslog list;
  windows_event_log : data_sources__windows_event_log list;
  windows_firewall_log : data_sources__windows_firewall_log list;
}
[@@deriving yojson_of]
(** data_sources *)

type destinations__azure_monitor_metrics = {
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** destinations__azure_monitor_metrics *)

type destinations__event_hub = {
  event_hub_id : string prop;  (** event_hub_id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** destinations__event_hub *)

type destinations__event_hub_direct = {
  event_hub_id : string prop;  (** event_hub_id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** destinations__event_hub_direct *)

type destinations__log_analytics = {
  name : string prop;  (** name *)
  workspace_resource_id : string prop;  (** workspace_resource_id *)
}
[@@deriving yojson_of]
(** destinations__log_analytics *)

type destinations__monitor_account = {
  monitor_account_id : string prop;  (** monitor_account_id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** destinations__monitor_account *)

type destinations__storage_blob = {
  container_name : string prop;  (** container_name *)
  name : string prop;  (** name *)
  storage_account_id : string prop;  (** storage_account_id *)
}
[@@deriving yojson_of]
(** destinations__storage_blob *)

type destinations__storage_blob_direct = {
  container_name : string prop;  (** container_name *)
  name : string prop;  (** name *)
  storage_account_id : string prop;  (** storage_account_id *)
}
[@@deriving yojson_of]
(** destinations__storage_blob_direct *)

type destinations__storage_table_direct = {
  name : string prop;  (** name *)
  storage_account_id : string prop;  (** storage_account_id *)
  table_name : string prop;  (** table_name *)
}
[@@deriving yojson_of]
(** destinations__storage_table_direct *)

type destinations = {
  azure_monitor_metrics : destinations__azure_monitor_metrics list;
  event_hub : destinations__event_hub list;
  event_hub_direct : destinations__event_hub_direct list;
  log_analytics : destinations__log_analytics list;
  monitor_account : destinations__monitor_account list;
  storage_blob : destinations__storage_blob list;
  storage_blob_direct : destinations__storage_blob_direct list;
  storage_table_direct : destinations__storage_table_direct list;
}
[@@deriving yojson_of]
(** destinations *)

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type stream_declaration__column = {
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** stream_declaration__column *)

type stream_declaration = {
  stream_name : string prop;  (** stream_name *)
  column : stream_declaration__column list;
}
[@@deriving yojson_of]
(** stream_declaration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_monitor_data_collection_rule = {
  data_collection_endpoint_id : string prop option; [@option]
      (** data_collection_endpoint_id *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  kind : string prop option; [@option]  (** kind *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  data_flow : data_flow list;
  data_sources : data_sources list;
  destinations : destinations list;
  identity : identity list;
  stream_declaration : stream_declaration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_rule *)

let data_flow ?built_in_transform ?output_stream ?transform_kql
    ~destinations ~streams () : data_flow =
  {
    built_in_transform;
    destinations;
    output_stream;
    streams;
    transform_kql;
  }

let data_sources__data_import__event_hub_data_source ?consumer_group
    ~name ~stream () :
    data_sources__data_import__event_hub_data_source =
  { consumer_group; name; stream }

let data_sources__data_import ~event_hub_data_source () :
    data_sources__data_import =
  { event_hub_data_source }

let data_sources__extension ?extension_json ?input_data_sources
    ~extension_name ~name ~streams () : data_sources__extension =
  {
    extension_json;
    extension_name;
    input_data_sources;
    name;
    streams;
  }

let data_sources__iis_log ?log_directories ~name ~streams () :
    data_sources__iis_log =
  { log_directories; name; streams }

let data_sources__log_file__settings__text
    ~record_start_timestamp_format () :
    data_sources__log_file__settings__text =
  { record_start_timestamp_format }

let data_sources__log_file__settings ~text () :
    data_sources__log_file__settings =
  { text }

let data_sources__log_file ~file_patterns ~format ~name ~streams
    ~settings () : data_sources__log_file =
  { file_patterns; format; name; streams; settings }

let data_sources__performance_counter ~counter_specifiers ~name
    ~sampling_frequency_in_seconds ~streams () :
    data_sources__performance_counter =
  {
    counter_specifiers;
    name;
    sampling_frequency_in_seconds;
    streams;
  }

let data_sources__platform_telemetry ~name ~streams () :
    data_sources__platform_telemetry =
  { name; streams }

let data_sources__prometheus_forwarder__label_include_filter ~label
    ~value () :
    data_sources__prometheus_forwarder__label_include_filter =
  { label; value }

let data_sources__prometheus_forwarder ~name ~streams
    ~label_include_filter () : data_sources__prometheus_forwarder =
  { name; streams; label_include_filter }

let data_sources__syslog ?streams ~facility_names ~log_levels ~name
    () : data_sources__syslog =
  { facility_names; log_levels; name; streams }

let data_sources__windows_event_log ~name ~streams ~x_path_queries ()
    : data_sources__windows_event_log =
  { name; streams; x_path_queries }

let data_sources__windows_firewall_log ~name ~streams () :
    data_sources__windows_firewall_log =
  { name; streams }

let data_sources ~data_import ~extension ~iis_log ~log_file
    ~performance_counter ~platform_telemetry ~prometheus_forwarder
    ~syslog ~windows_event_log ~windows_firewall_log () :
    data_sources =
  {
    data_import;
    extension;
    iis_log;
    log_file;
    performance_counter;
    platform_telemetry;
    prometheus_forwarder;
    syslog;
    windows_event_log;
    windows_firewall_log;
  }

let destinations__azure_monitor_metrics ~name () :
    destinations__azure_monitor_metrics =
  { name }

let destinations__event_hub ~event_hub_id ~name () :
    destinations__event_hub =
  { event_hub_id; name }

let destinations__event_hub_direct ~event_hub_id ~name () :
    destinations__event_hub_direct =
  { event_hub_id; name }

let destinations__log_analytics ~name ~workspace_resource_id () :
    destinations__log_analytics =
  { name; workspace_resource_id }

let destinations__monitor_account ~monitor_account_id ~name () :
    destinations__monitor_account =
  { monitor_account_id; name }

let destinations__storage_blob ~container_name ~name
    ~storage_account_id () : destinations__storage_blob =
  { container_name; name; storage_account_id }

let destinations__storage_blob_direct ~container_name ~name
    ~storage_account_id () : destinations__storage_blob_direct =
  { container_name; name; storage_account_id }

let destinations__storage_table_direct ~name ~storage_account_id
    ~table_name () : destinations__storage_table_direct =
  { name; storage_account_id; table_name }

let destinations ~azure_monitor_metrics ~event_hub ~event_hub_direct
    ~log_analytics ~monitor_account ~storage_blob
    ~storage_blob_direct ~storage_table_direct () : destinations =
  {
    azure_monitor_metrics;
    event_hub;
    event_hub_direct;
    log_analytics;
    monitor_account;
    storage_blob;
    storage_blob_direct;
    storage_table_direct;
  }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let stream_declaration__column ~name ~type_ () :
    stream_declaration__column =
  { name; type_ }

let stream_declaration ~stream_name ~column () : stream_declaration =
  { stream_name; column }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_monitor_data_collection_rule ?data_collection_endpoint_id
    ?description ?id ?kind ?tags ?timeouts ~location ~name
    ~resource_group_name ~data_flow ~data_sources ~destinations
    ~identity ~stream_declaration () :
    azurerm_monitor_data_collection_rule =
  {
    data_collection_endpoint_id;
    description;
    id;
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

type t = {
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

let make ?data_collection_endpoint_id ?description ?id ?kind ?tags
    ?timeouts ~location ~name ~resource_group_name ~data_flow
    ~data_sources ~destinations ~identity ~stream_declaration __id =
  let __type = "azurerm_monitor_data_collection_rule" in
  let __attrs =
    ({
       data_collection_endpoint_id =
         Prop.computed __type __id "data_collection_endpoint_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       immutable_id = Prop.computed __type __id "immutable_id";
       kind = Prop.computed __type __id "kind";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_monitor_data_collection_rule
        (azurerm_monitor_data_collection_rule
           ?data_collection_endpoint_id ?description ?id ?kind ?tags
           ?timeouts ~location ~name ~resource_group_name ~data_flow
           ~data_sources ~destinations ~identity ~stream_declaration
           ());
    attrs = __attrs;
  }

let register ?tf_module ?data_collection_endpoint_id ?description ?id
    ?kind ?tags ?timeouts ~location ~name ~resource_group_name
    ~data_flow ~data_sources ~destinations ~identity
    ~stream_declaration __id =
  let (r : _ Tf_core.resource) =
    make ?data_collection_endpoint_id ?description ?id ?kind ?tags
      ?timeouts ~location ~name ~resource_group_name ~data_flow
      ~data_sources ~destinations ~identity ~stream_declaration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
