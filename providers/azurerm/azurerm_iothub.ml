(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloud_to_device__feedback = {
  lock_duration : string prop option; [@option]
  max_delivery_count : float prop option; [@option]
  time_to_live : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloud_to_device__feedback) -> ()

let yojson_of_cloud_to_device__feedback =
  (function
   | {
       lock_duration = v_lock_duration;
       max_delivery_count = v_max_delivery_count;
       time_to_live = v_time_to_live;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_time_to_live with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "time_to_live", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_delivery_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_delivery_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lock_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lock_duration", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloud_to_device__feedback -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloud_to_device__feedback

[@@@deriving.end]

type cloud_to_device = {
  default_ttl : string prop option; [@option]
  max_delivery_count : float prop option; [@option]
  feedback : cloud_to_device__feedback list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloud_to_device) -> ()

let yojson_of_cloud_to_device =
  (function
   | {
       default_ttl = v_default_ttl;
       max_delivery_count = v_max_delivery_count;
       feedback = v_feedback;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_cloud_to_device__feedback
             v_feedback
         in
         ("feedback", arg) :: bnds
       in
       let bnds =
         match v_max_delivery_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_delivery_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_ttl", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloud_to_device -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloud_to_device

[@@@deriving.end]

type fallback_route = {
  condition : string prop option; [@option]
  enabled : bool prop option; [@option]
  endpoint_names : string prop list option; [@option]
  source : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : fallback_route) -> ()

let yojson_of_fallback_route =
  (function
   | {
       condition = v_condition;
       enabled = v_enabled;
       endpoint_names = v_endpoint_names;
       source = v_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_source with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source", arg in
             bnd :: bnds
       in
       let bnds =
         match v_endpoint_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "endpoint_names", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "condition", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : fallback_route -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_fallback_route

[@@@deriving.end]

type file_upload = {
  authentication_type : string prop option; [@option]
  connection_string : string prop;
  container_name : string prop;
  default_ttl : string prop option; [@option]
  identity_id : string prop option; [@option]
  lock_duration : string prop option; [@option]
  max_delivery_count : float prop option; [@option]
  notifications : bool prop option; [@option]
  sas_ttl : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : file_upload) -> ()

let yojson_of_file_upload =
  (function
   | {
       authentication_type = v_authentication_type;
       connection_string = v_connection_string;
       container_name = v_container_name;
       default_ttl = v_default_ttl;
       identity_id = v_identity_id;
       lock_duration = v_lock_duration;
       max_delivery_count = v_max_delivery_count;
       notifications = v_notifications;
       sas_ttl = v_sas_ttl;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sas_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sas_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_notifications with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "notifications", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_delivery_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_delivery_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lock_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lock_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_identity_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_container_name
         in
         ("container_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_connection_string
         in
         ("connection_string", arg) :: bnds
       in
       let bnds =
         match v_authentication_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authentication_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : file_upload -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_file_upload

[@@@deriving.end]

type identity = {
  identity_ids : string prop list option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { identity_ids = v_identity_ids; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_identity_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "identity_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type network_rule_set__ip_rule = {
  action : string prop option; [@option]
  ip_mask : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_rule_set__ip_rule) -> ()

let yojson_of_network_rule_set__ip_rule =
  (function
   | { action = v_action; ip_mask = v_ip_mask; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_mask in
         ("ip_mask", arg) :: bnds
       in
       let bnds =
         match v_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "action", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_rule_set__ip_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_rule_set__ip_rule

[@@@deriving.end]

type network_rule_set = {
  apply_to_builtin_eventhub_endpoint : bool prop option; [@option]
  default_action : string prop option; [@option]
  ip_rule : network_rule_set__ip_rule list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_rule_set) -> ()

let yojson_of_network_rule_set =
  (function
   | {
       apply_to_builtin_eventhub_endpoint =
         v_apply_to_builtin_eventhub_endpoint;
       default_action = v_default_action;
       ip_rule = v_ip_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_network_rule_set__ip_rule
             v_ip_rule
         in
         ("ip_rule", arg) :: bnds
       in
       let bnds =
         match v_default_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_action", arg in
             bnd :: bnds
       in
       let bnds =
         match v_apply_to_builtin_eventhub_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "apply_to_builtin_eventhub_endpoint", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_rule_set -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_rule_set

[@@@deriving.end]

type sku = { capacity : float prop; name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : sku) -> ()

let yojson_of_sku =
  (function
   | { capacity = v_capacity; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_capacity in
         ("capacity", arg) :: bnds
       in
       `Assoc bnds
    : sku -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sku

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type endpoint = {
  authentication_type : string prop;
  batch_frequency_in_seconds : float prop;
  connection_string : string prop;
  container_name : string prop;
  encoding : string prop;
  endpoint_uri : string prop;
  entity_path : string prop;
  file_name_format : string prop;
  identity_id : string prop;
  max_chunk_size_in_bytes : float prop;
  name : string prop;
  resource_group_name : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoint) -> ()

let yojson_of_endpoint =
  (function
   | {
       authentication_type = v_authentication_type;
       batch_frequency_in_seconds = v_batch_frequency_in_seconds;
       connection_string = v_connection_string;
       container_name = v_container_name;
       encoding = v_encoding;
       endpoint_uri = v_endpoint_uri;
       entity_path = v_entity_path;
       file_name_format = v_file_name_format;
       identity_id = v_identity_id;
       max_chunk_size_in_bytes = v_max_chunk_size_in_bytes;
       name = v_name;
       resource_group_name = v_resource_group_name;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_chunk_size_in_bytes
         in
         ("max_chunk_size_in_bytes", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_identity_id in
         ("identity_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_file_name_format
         in
         ("file_name_format", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_entity_path in
         ("entity_path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint_uri in
         ("endpoint_uri", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_encoding in
         ("encoding", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_container_name
         in
         ("container_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_connection_string
         in
         ("connection_string", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_batch_frequency_in_seconds
         in
         ("batch_frequency_in_seconds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_authentication_type
         in
         ("authentication_type", arg) :: bnds
       in
       `Assoc bnds
    : endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoint

[@@@deriving.end]

type enrichment = {
  endpoint_names : string prop list;
  key : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : enrichment) -> ()

let yojson_of_enrichment =
  (function
   | {
       endpoint_names = v_endpoint_names;
       key = v_key;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_endpoint_names
         in
         ("endpoint_names", arg) :: bnds
       in
       `Assoc bnds
    : enrichment -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_enrichment

[@@@deriving.end]

type route = {
  condition : string prop;
  enabled : bool prop;
  endpoint_names : string prop list;
  name : string prop;
  source : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : route) -> ()

let yojson_of_route =
  (function
   | {
       condition = v_condition;
       enabled = v_enabled;
       endpoint_names = v_endpoint_names;
       name = v_name;
       source = v_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source in
         ("source", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_endpoint_names
         in
         ("endpoint_names", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_condition in
         ("condition", arg) :: bnds
       in
       `Assoc bnds
    : route -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_route

[@@@deriving.end]

type shared_access_policy = {
  key_name : string prop;
  permissions : string prop;
  primary_key : string prop;
  secondary_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : shared_access_policy) -> ()

let yojson_of_shared_access_policy =
  (function
   | {
       key_name = v_key_name;
       permissions = v_permissions;
       primary_key = v_primary_key;
       secondary_key = v_secondary_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secondary_key in
         ("secondary_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_primary_key in
         ("primary_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_permissions in
         ("permissions", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_name in
         ("key_name", arg) :: bnds
       in
       `Assoc bnds
    : shared_access_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_shared_access_policy

[@@@deriving.end]

type azurerm_iothub = {
  endpoint : endpoint list option; [@option]
  enrichment : enrichment list option; [@option]
  event_hub_partition_count : float prop option; [@option]
  event_hub_retention_in_days : float prop option; [@option]
  id : string prop option; [@option]
  local_authentication_enabled : bool prop option; [@option]
  location : string prop;
  min_tls_version : string prop option; [@option]
  name : string prop;
  public_network_access_enabled : bool prop option; [@option]
  resource_group_name : string prop;
  route : route list option; [@option]
  tags : (string * string prop) list option; [@option]
  cloud_to_device : cloud_to_device list;
  fallback_route : fallback_route list;
  file_upload : file_upload list;
  identity : identity list;
  network_rule_set : network_rule_set list;
  sku : sku list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_iothub) -> ()

let yojson_of_azurerm_iothub =
  (function
   | {
       endpoint = v_endpoint;
       enrichment = v_enrichment;
       event_hub_partition_count = v_event_hub_partition_count;
       event_hub_retention_in_days = v_event_hub_retention_in_days;
       id = v_id;
       local_authentication_enabled = v_local_authentication_enabled;
       location = v_location;
       min_tls_version = v_min_tls_version;
       name = v_name;
       public_network_access_enabled =
         v_public_network_access_enabled;
       resource_group_name = v_resource_group_name;
       route = v_route;
       tags = v_tags;
       cloud_to_device = v_cloud_to_device;
       fallback_route = v_fallback_route;
       file_upload = v_file_upload;
       identity = v_identity;
       network_rule_set = v_network_rule_set;
       sku = v_sku;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_sku v_sku in
         ("sku", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_network_rule_set
             v_network_rule_set
         in
         ("network_rule_set", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_identity v_identity in
         ("identity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_file_upload v_file_upload
         in
         ("file_upload", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_fallback_route v_fallback_route
         in
         ("fallback_route", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_cloud_to_device v_cloud_to_device
         in
         ("cloud_to_device", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_route with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_list yojson_of_route v in
             let bnd = "route", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_public_network_access_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "public_network_access_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_min_tls_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "min_tls_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_local_authentication_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "local_authentication_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_event_hub_retention_in_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "event_hub_retention_in_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_event_hub_partition_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "event_hub_partition_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enrichment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_list yojson_of_enrichment v in
             let bnd = "enrichment", arg in
             bnd :: bnds
       in
       let bnds =
         match v_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_list yojson_of_endpoint v in
             let bnd = "endpoint", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_iothub -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_iothub

[@@@deriving.end]

let cloud_to_device__feedback ?lock_duration ?max_delivery_count
    ?time_to_live () : cloud_to_device__feedback =
  { lock_duration; max_delivery_count; time_to_live }

let cloud_to_device ?default_ttl ?max_delivery_count ~feedback () :
    cloud_to_device =
  { default_ttl; max_delivery_count; feedback }

let fallback_route ?condition ?enabled ?endpoint_names ?source () :
    fallback_route =
  { condition; enabled; endpoint_names; source }

let file_upload ?authentication_type ?default_ttl ?identity_id
    ?lock_duration ?max_delivery_count ?notifications ?sas_ttl
    ~connection_string ~container_name () : file_upload =
  {
    authentication_type;
    connection_string;
    container_name;
    default_ttl;
    identity_id;
    lock_duration;
    max_delivery_count;
    notifications;
    sas_ttl;
  }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let network_rule_set__ip_rule ?action ~ip_mask ~name () :
    network_rule_set__ip_rule =
  { action; ip_mask; name }

let network_rule_set ?apply_to_builtin_eventhub_endpoint
    ?default_action ~ip_rule () : network_rule_set =
  { apply_to_builtin_eventhub_endpoint; default_action; ip_rule }

let sku ~capacity ~name () : sku = { capacity; name }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iothub ?endpoint ?enrichment ?event_hub_partition_count
    ?event_hub_retention_in_days ?id ?local_authentication_enabled
    ?min_tls_version ?public_network_access_enabled ?route ?tags
    ?timeouts ~location ~name ~resource_group_name ~cloud_to_device
    ~fallback_route ~file_upload ~identity ~network_rule_set ~sku ()
    : azurerm_iothub =
  {
    endpoint;
    enrichment;
    event_hub_partition_count;
    event_hub_retention_in_days;
    id;
    local_authentication_enabled;
    location;
    min_tls_version;
    name;
    public_network_access_enabled;
    resource_group_name;
    route;
    tags;
    cloud_to_device;
    fallback_route;
    file_upload;
    identity;
    network_rule_set;
    sku;
    timeouts;
  }

type t = {
  endpoint : endpoint list prop;
  enrichment : enrichment list prop;
  event_hub_events_endpoint : string prop;
  event_hub_events_namespace : string prop;
  event_hub_events_path : string prop;
  event_hub_operations_endpoint : string prop;
  event_hub_operations_path : string prop;
  event_hub_partition_count : float prop;
  event_hub_retention_in_days : float prop;
  hostname : string prop;
  id : string prop;
  local_authentication_enabled : bool prop;
  location : string prop;
  min_tls_version : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  route : route list prop;
  shared_access_policy : shared_access_policy list prop;
  tags : (string * string) list prop;
  type_ : string prop;
}

let make ?endpoint ?enrichment ?event_hub_partition_count
    ?event_hub_retention_in_days ?id ?local_authentication_enabled
    ?min_tls_version ?public_network_access_enabled ?route ?tags
    ?timeouts ~location ~name ~resource_group_name ~cloud_to_device
    ~fallback_route ~file_upload ~identity ~network_rule_set ~sku
    __id =
  let __type = "azurerm_iothub" in
  let __attrs =
    ({
       endpoint = Prop.computed __type __id "endpoint";
       enrichment = Prop.computed __type __id "enrichment";
       event_hub_events_endpoint =
         Prop.computed __type __id "event_hub_events_endpoint";
       event_hub_events_namespace =
         Prop.computed __type __id "event_hub_events_namespace";
       event_hub_events_path =
         Prop.computed __type __id "event_hub_events_path";
       event_hub_operations_endpoint =
         Prop.computed __type __id "event_hub_operations_endpoint";
       event_hub_operations_path =
         Prop.computed __type __id "event_hub_operations_path";
       event_hub_partition_count =
         Prop.computed __type __id "event_hub_partition_count";
       event_hub_retention_in_days =
         Prop.computed __type __id "event_hub_retention_in_days";
       hostname = Prop.computed __type __id "hostname";
       id = Prop.computed __type __id "id";
       local_authentication_enabled =
         Prop.computed __type __id "local_authentication_enabled";
       location = Prop.computed __type __id "location";
       min_tls_version = Prop.computed __type __id "min_tls_version";
       name = Prop.computed __type __id "name";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       route = Prop.computed __type __id "route";
       shared_access_policy =
         Prop.computed __type __id "shared_access_policy";
       tags = Prop.computed __type __id "tags";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_iothub
        (azurerm_iothub ?endpoint ?enrichment
           ?event_hub_partition_count ?event_hub_retention_in_days
           ?id ?local_authentication_enabled ?min_tls_version
           ?public_network_access_enabled ?route ?tags ?timeouts
           ~location ~name ~resource_group_name ~cloud_to_device
           ~fallback_route ~file_upload ~identity ~network_rule_set
           ~sku ());
    attrs = __attrs;
  }

let register ?tf_module ?endpoint ?enrichment
    ?event_hub_partition_count ?event_hub_retention_in_days ?id
    ?local_authentication_enabled ?min_tls_version
    ?public_network_access_enabled ?route ?tags ?timeouts ~location
    ~name ~resource_group_name ~cloud_to_device ~fallback_route
    ~file_upload ~identity ~network_rule_set ~sku __id =
  let (r : _ Tf_core.resource) =
    make ?endpoint ?enrichment ?event_hub_partition_count
      ?event_hub_retention_in_days ?id ?local_authentication_enabled
      ?min_tls_version ?public_network_access_enabled ?route ?tags
      ?timeouts ~location ~name ~resource_group_name ~cloud_to_device
      ~fallback_route ~file_upload ~identity ~network_rule_set ~sku
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
