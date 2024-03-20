(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type analytical_storage = { schema_type : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : analytical_storage) -> ()

let yojson_of_analytical_storage =
  (function
   | { schema_type = v_schema_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_schema_type in
         ("schema_type", arg) :: bnds
       in
       `Assoc bnds
    : analytical_storage -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_analytical_storage

[@@@deriving.end]

type backup = {
  interval_in_minutes : float prop option; [@option]
  retention_in_hours : float prop option; [@option]
  storage_redundancy : string prop option; [@option]
  tier : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backup) -> ()

let yojson_of_backup =
  (function
   | {
       interval_in_minutes = v_interval_in_minutes;
       retention_in_hours = v_retention_in_hours;
       storage_redundancy = v_storage_redundancy;
       tier = v_tier;
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
         match v_tier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_redundancy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_redundancy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_retention_in_hours with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retention_in_hours", arg in
             bnd :: bnds
       in
       let bnds =
         match v_interval_in_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "interval_in_minutes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : backup -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backup

[@@@deriving.end]

type capabilities = { name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : capabilities) -> ()

let yojson_of_capabilities =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : capabilities -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_capabilities

[@@@deriving.end]

type capacity = { total_throughput_limit : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : capacity) -> ()

let yojson_of_capacity =
  (function
   | { total_throughput_limit = v_total_throughput_limit } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_total_throughput_limit
         in
         ("total_throughput_limit", arg) :: bnds
       in
       `Assoc bnds
    : capacity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_capacity

[@@@deriving.end]

type consistency_policy = {
  consistency_level : string prop;
  max_interval_in_seconds : float prop option; [@option]
  max_staleness_prefix : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : consistency_policy) -> ()

let yojson_of_consistency_policy =
  (function
   | {
       consistency_level = v_consistency_level;
       max_interval_in_seconds = v_max_interval_in_seconds;
       max_staleness_prefix = v_max_staleness_prefix;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_max_staleness_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_staleness_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_interval_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_interval_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_consistency_level
         in
         ("consistency_level", arg) :: bnds
       in
       `Assoc bnds
    : consistency_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_consistency_policy

[@@@deriving.end]

type cors_rule = {
  allowed_headers : string prop list;
  allowed_methods : string prop list;
  allowed_origins : string prop list;
  exposed_headers : string prop list;
  max_age_in_seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cors_rule) -> ()

let yojson_of_cors_rule =
  (function
   | {
       allowed_headers = v_allowed_headers;
       allowed_methods = v_allowed_methods;
       allowed_origins = v_allowed_origins;
       exposed_headers = v_exposed_headers;
       max_age_in_seconds = v_max_age_in_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_max_age_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_age_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_exposed_headers
         in
         ("exposed_headers", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_allowed_origins
         in
         ("allowed_origins", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_allowed_methods
         in
         ("allowed_methods", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_allowed_headers
         in
         ("allowed_headers", arg) :: bnds
       in
       `Assoc bnds
    : cors_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cors_rule

[@@@deriving.end]

type geo_location = {
  failover_priority : float prop;
  location : string prop;
  zone_redundant : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : geo_location) -> ()

let yojson_of_geo_location =
  (function
   | {
       failover_priority = v_failover_priority;
       location = v_location;
       zone_redundant = v_zone_redundant;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_zone_redundant with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "zone_redundant", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_failover_priority
         in
         ("failover_priority", arg) :: bnds
       in
       `Assoc bnds
    : geo_location -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_geo_location

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

type restore__database = {
  collection_names : string prop list option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : restore__database) -> ()

let yojson_of_restore__database =
  (function
   | { collection_names = v_collection_names; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_collection_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "collection_names", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : restore__database -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_restore__database

[@@@deriving.end]

type restore__gremlin_database = {
  graph_names : string prop list option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : restore__gremlin_database) -> ()

let yojson_of_restore__gremlin_database =
  (function
   | { graph_names = v_graph_names; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_graph_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "graph_names", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : restore__gremlin_database -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_restore__gremlin_database

[@@@deriving.end]

type restore = {
  restore_timestamp_in_utc : string prop;
  source_cosmosdb_account_id : string prop;
  tables_to_restore : string prop list option; [@option]
  database : restore__database list;
  gremlin_database : restore__gremlin_database list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : restore) -> ()

let yojson_of_restore =
  (function
   | {
       restore_timestamp_in_utc = v_restore_timestamp_in_utc;
       source_cosmosdb_account_id = v_source_cosmosdb_account_id;
       tables_to_restore = v_tables_to_restore;
       database = v_database;
       gremlin_database = v_gremlin_database;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_restore__gremlin_database
             v_gremlin_database
         in
         ("gremlin_database", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_restore__database v_database
         in
         ("database", arg) :: bnds
       in
       let bnds =
         match v_tables_to_restore with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tables_to_restore", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_source_cosmosdb_account_id
         in
         ("source_cosmosdb_account_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_restore_timestamp_in_utc
         in
         ("restore_timestamp_in_utc", arg) :: bnds
       in
       `Assoc bnds
    : restore -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_restore

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

type virtual_network_rule = {
  id : string prop;
  ignore_missing_vnet_service_endpoint : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : virtual_network_rule) -> ()

let yojson_of_virtual_network_rule =
  (function
   | {
       id = v_id;
       ignore_missing_vnet_service_endpoint =
         v_ignore_missing_vnet_service_endpoint;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_ignore_missing_vnet_service_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ignore_missing_vnet_service_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : virtual_network_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_virtual_network_rule

[@@@deriving.end]

type azurerm_cosmosdb_account = {
  access_key_metadata_writes_enabled : bool prop option; [@option]
  analytical_storage_enabled : bool prop option; [@option]
  create_mode : string prop option; [@option]
  default_identity_type : string prop option; [@option]
  enable_automatic_failover : bool prop option; [@option]
  enable_free_tier : bool prop option; [@option]
  enable_multiple_write_locations : bool prop option; [@option]
  id : string prop option; [@option]
  ip_range_filter : string prop option; [@option]
  is_virtual_network_filter_enabled : bool prop option; [@option]
  key_vault_key_id : string prop option; [@option]
  kind : string prop option; [@option]
  local_authentication_disabled : bool prop option; [@option]
  location : string prop;
  minimal_tls_version : string prop option; [@option]
  mongo_server_version : string prop option; [@option]
  name : string prop;
  network_acl_bypass_for_azure_services : bool prop option; [@option]
  network_acl_bypass_ids : string prop list option; [@option]
  offer_type : string prop;
  partition_merge_enabled : bool prop option; [@option]
  public_network_access_enabled : bool prop option; [@option]
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  analytical_storage : analytical_storage list;
  backup : backup list;
  capabilities : capabilities list;
  capacity : capacity list;
  consistency_policy : consistency_policy list;
  cors_rule : cors_rule list;
  geo_location : geo_location list;
  identity : identity list;
  restore : restore list;
  timeouts : timeouts option;
  virtual_network_rule : virtual_network_rule list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_cosmosdb_account) -> ()

let yojson_of_azurerm_cosmosdb_account =
  (function
   | {
       access_key_metadata_writes_enabled =
         v_access_key_metadata_writes_enabled;
       analytical_storage_enabled = v_analytical_storage_enabled;
       create_mode = v_create_mode;
       default_identity_type = v_default_identity_type;
       enable_automatic_failover = v_enable_automatic_failover;
       enable_free_tier = v_enable_free_tier;
       enable_multiple_write_locations =
         v_enable_multiple_write_locations;
       id = v_id;
       ip_range_filter = v_ip_range_filter;
       is_virtual_network_filter_enabled =
         v_is_virtual_network_filter_enabled;
       key_vault_key_id = v_key_vault_key_id;
       kind = v_kind;
       local_authentication_disabled =
         v_local_authentication_disabled;
       location = v_location;
       minimal_tls_version = v_minimal_tls_version;
       mongo_server_version = v_mongo_server_version;
       name = v_name;
       network_acl_bypass_for_azure_services =
         v_network_acl_bypass_for_azure_services;
       network_acl_bypass_ids = v_network_acl_bypass_ids;
       offer_type = v_offer_type;
       partition_merge_enabled = v_partition_merge_enabled;
       public_network_access_enabled =
         v_public_network_access_enabled;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       analytical_storage = v_analytical_storage;
       backup = v_backup;
       capabilities = v_capabilities;
       capacity = v_capacity;
       consistency_policy = v_consistency_policy;
       cors_rule = v_cors_rule;
       geo_location = v_geo_location;
       identity = v_identity;
       restore = v_restore;
       timeouts = v_timeouts;
       virtual_network_rule = v_virtual_network_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_virtual_network_rule
             v_virtual_network_rule
         in
         ("virtual_network_rule", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_restore v_restore in
         ("restore", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_identity v_identity in
         ("identity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_geo_location v_geo_location
         in
         ("geo_location", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_cors_rule v_cors_rule in
         ("cors_rule", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_consistency_policy
             v_consistency_policy
         in
         ("consistency_policy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_capacity v_capacity in
         ("capacity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_capabilities v_capabilities
         in
         ("capabilities", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_backup v_backup in
         ("backup", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_analytical_storage
             v_analytical_storage
         in
         ("analytical_storage", arg) :: bnds
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
         match v_partition_merge_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "partition_merge_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_offer_type in
         ("offer_type", arg) :: bnds
       in
       let bnds =
         match v_network_acl_bypass_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "network_acl_bypass_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network_acl_bypass_for_azure_services with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "network_acl_bypass_for_azure_services", arg
             in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_mongo_server_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mongo_server_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_minimal_tls_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "minimal_tls_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_local_authentication_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "local_authentication_disabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kind with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kind", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_vault_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_vault_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_virtual_network_filter_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_virtual_network_filter_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_range_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_range_filter", arg in
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
         match v_enable_multiple_write_locations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_multiple_write_locations", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_free_tier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_free_tier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_automatic_failover with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_automatic_failover", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_identity_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_identity_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_analytical_storage_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "analytical_storage_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_key_metadata_writes_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "access_key_metadata_writes_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_cosmosdb_account -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_cosmosdb_account

[@@@deriving.end]

let analytical_storage ~schema_type () : analytical_storage =
  { schema_type }

let backup ?interval_in_minutes ?retention_in_hours
    ?storage_redundancy ?tier ~type_ () : backup =
  {
    interval_in_minutes;
    retention_in_hours;
    storage_redundancy;
    tier;
    type_;
  }

let capabilities ~name () : capabilities = { name }

let capacity ~total_throughput_limit () : capacity =
  { total_throughput_limit }

let consistency_policy ?max_interval_in_seconds ?max_staleness_prefix
    ~consistency_level () : consistency_policy =
  {
    consistency_level;
    max_interval_in_seconds;
    max_staleness_prefix;
  }

let cors_rule ?max_age_in_seconds ~allowed_headers ~allowed_methods
    ~allowed_origins ~exposed_headers () : cors_rule =
  {
    allowed_headers;
    allowed_methods;
    allowed_origins;
    exposed_headers;
    max_age_in_seconds;
  }

let geo_location ?zone_redundant ~failover_priority ~location () :
    geo_location =
  { failover_priority; location; zone_redundant }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let restore__database ?collection_names ~name () : restore__database
    =
  { collection_names; name }

let restore__gremlin_database ?graph_names ~name () :
    restore__gremlin_database =
  { graph_names; name }

let restore ?tables_to_restore ~restore_timestamp_in_utc
    ~source_cosmosdb_account_id ~database ~gremlin_database () :
    restore =
  {
    restore_timestamp_in_utc;
    source_cosmosdb_account_id;
    tables_to_restore;
    database;
    gremlin_database;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let virtual_network_rule ?ignore_missing_vnet_service_endpoint ~id ()
    : virtual_network_rule =
  { id; ignore_missing_vnet_service_endpoint }

let azurerm_cosmosdb_account ?access_key_metadata_writes_enabled
    ?analytical_storage_enabled ?create_mode ?default_identity_type
    ?enable_automatic_failover ?enable_free_tier
    ?enable_multiple_write_locations ?id ?ip_range_filter
    ?is_virtual_network_filter_enabled ?key_vault_key_id ?kind
    ?local_authentication_disabled ?minimal_tls_version
    ?mongo_server_version ?network_acl_bypass_for_azure_services
    ?network_acl_bypass_ids ?partition_merge_enabled
    ?public_network_access_enabled ?tags ?timeouts ~location ~name
    ~offer_type ~resource_group_name ~analytical_storage ~backup
    ~capabilities ~capacity ~consistency_policy ~cors_rule
    ~geo_location ~identity ~restore ~virtual_network_rule () :
    azurerm_cosmosdb_account =
  {
    access_key_metadata_writes_enabled;
    analytical_storage_enabled;
    create_mode;
    default_identity_type;
    enable_automatic_failover;
    enable_free_tier;
    enable_multiple_write_locations;
    id;
    ip_range_filter;
    is_virtual_network_filter_enabled;
    key_vault_key_id;
    kind;
    local_authentication_disabled;
    location;
    minimal_tls_version;
    mongo_server_version;
    name;
    network_acl_bypass_for_azure_services;
    network_acl_bypass_ids;
    offer_type;
    partition_merge_enabled;
    public_network_access_enabled;
    resource_group_name;
    tags;
    analytical_storage;
    backup;
    capabilities;
    capacity;
    consistency_policy;
    cors_rule;
    geo_location;
    identity;
    restore;
    timeouts;
    virtual_network_rule;
  }

type t = {
  access_key_metadata_writes_enabled : bool prop;
  analytical_storage_enabled : bool prop;
  connection_strings : string list prop;
  create_mode : string prop;
  default_identity_type : string prop;
  enable_automatic_failover : bool prop;
  enable_free_tier : bool prop;
  enable_multiple_write_locations : bool prop;
  endpoint : string prop;
  id : string prop;
  ip_range_filter : string prop;
  is_virtual_network_filter_enabled : bool prop;
  key_vault_key_id : string prop;
  kind : string prop;
  local_authentication_disabled : bool prop;
  location : string prop;
  minimal_tls_version : string prop;
  mongo_server_version : string prop;
  name : string prop;
  network_acl_bypass_for_azure_services : bool prop;
  network_acl_bypass_ids : string list prop;
  offer_type : string prop;
  partition_merge_enabled : bool prop;
  primary_key : string prop;
  primary_mongodb_connection_string : string prop;
  primary_readonly_key : string prop;
  primary_readonly_mongodb_connection_string : string prop;
  primary_readonly_sql_connection_string : string prop;
  primary_sql_connection_string : string prop;
  public_network_access_enabled : bool prop;
  read_endpoints : string list prop;
  resource_group_name : string prop;
  secondary_key : string prop;
  secondary_mongodb_connection_string : string prop;
  secondary_readonly_key : string prop;
  secondary_readonly_mongodb_connection_string : string prop;
  secondary_readonly_sql_connection_string : string prop;
  secondary_sql_connection_string : string prop;
  tags : (string * string) list prop;
  write_endpoints : string list prop;
}

let make ?access_key_metadata_writes_enabled
    ?analytical_storage_enabled ?create_mode ?default_identity_type
    ?enable_automatic_failover ?enable_free_tier
    ?enable_multiple_write_locations ?id ?ip_range_filter
    ?is_virtual_network_filter_enabled ?key_vault_key_id ?kind
    ?local_authentication_disabled ?minimal_tls_version
    ?mongo_server_version ?network_acl_bypass_for_azure_services
    ?network_acl_bypass_ids ?partition_merge_enabled
    ?public_network_access_enabled ?tags ?timeouts ~location ~name
    ~offer_type ~resource_group_name ~analytical_storage ~backup
    ~capabilities ~capacity ~consistency_policy ~cors_rule
    ~geo_location ~identity ~restore ~virtual_network_rule __id =
  let __type = "azurerm_cosmosdb_account" in
  let __attrs =
    ({
       access_key_metadata_writes_enabled =
         Prop.computed __type __id
           "access_key_metadata_writes_enabled";
       analytical_storage_enabled =
         Prop.computed __type __id "analytical_storage_enabled";
       connection_strings =
         Prop.computed __type __id "connection_strings";
       create_mode = Prop.computed __type __id "create_mode";
       default_identity_type =
         Prop.computed __type __id "default_identity_type";
       enable_automatic_failover =
         Prop.computed __type __id "enable_automatic_failover";
       enable_free_tier =
         Prop.computed __type __id "enable_free_tier";
       enable_multiple_write_locations =
         Prop.computed __type __id "enable_multiple_write_locations";
       endpoint = Prop.computed __type __id "endpoint";
       id = Prop.computed __type __id "id";
       ip_range_filter = Prop.computed __type __id "ip_range_filter";
       is_virtual_network_filter_enabled =
         Prop.computed __type __id
           "is_virtual_network_filter_enabled";
       key_vault_key_id =
         Prop.computed __type __id "key_vault_key_id";
       kind = Prop.computed __type __id "kind";
       local_authentication_disabled =
         Prop.computed __type __id "local_authentication_disabled";
       location = Prop.computed __type __id "location";
       minimal_tls_version =
         Prop.computed __type __id "minimal_tls_version";
       mongo_server_version =
         Prop.computed __type __id "mongo_server_version";
       name = Prop.computed __type __id "name";
       network_acl_bypass_for_azure_services =
         Prop.computed __type __id
           "network_acl_bypass_for_azure_services";
       network_acl_bypass_ids =
         Prop.computed __type __id "network_acl_bypass_ids";
       offer_type = Prop.computed __type __id "offer_type";
       partition_merge_enabled =
         Prop.computed __type __id "partition_merge_enabled";
       primary_key = Prop.computed __type __id "primary_key";
       primary_mongodb_connection_string =
         Prop.computed __type __id
           "primary_mongodb_connection_string";
       primary_readonly_key =
         Prop.computed __type __id "primary_readonly_key";
       primary_readonly_mongodb_connection_string =
         Prop.computed __type __id
           "primary_readonly_mongodb_connection_string";
       primary_readonly_sql_connection_string =
         Prop.computed __type __id
           "primary_readonly_sql_connection_string";
       primary_sql_connection_string =
         Prop.computed __type __id "primary_sql_connection_string";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       read_endpoints = Prop.computed __type __id "read_endpoints";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       secondary_key = Prop.computed __type __id "secondary_key";
       secondary_mongodb_connection_string =
         Prop.computed __type __id
           "secondary_mongodb_connection_string";
       secondary_readonly_key =
         Prop.computed __type __id "secondary_readonly_key";
       secondary_readonly_mongodb_connection_string =
         Prop.computed __type __id
           "secondary_readonly_mongodb_connection_string";
       secondary_readonly_sql_connection_string =
         Prop.computed __type __id
           "secondary_readonly_sql_connection_string";
       secondary_sql_connection_string =
         Prop.computed __type __id "secondary_sql_connection_string";
       tags = Prop.computed __type __id "tags";
       write_endpoints = Prop.computed __type __id "write_endpoints";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cosmosdb_account
        (azurerm_cosmosdb_account ?access_key_metadata_writes_enabled
           ?analytical_storage_enabled ?create_mode
           ?default_identity_type ?enable_automatic_failover
           ?enable_free_tier ?enable_multiple_write_locations ?id
           ?ip_range_filter ?is_virtual_network_filter_enabled
           ?key_vault_key_id ?kind ?local_authentication_disabled
           ?minimal_tls_version ?mongo_server_version
           ?network_acl_bypass_for_azure_services
           ?network_acl_bypass_ids ?partition_merge_enabled
           ?public_network_access_enabled ?tags ?timeouts ~location
           ~name ~offer_type ~resource_group_name ~analytical_storage
           ~backup ~capabilities ~capacity ~consistency_policy
           ~cors_rule ~geo_location ~identity ~restore
           ~virtual_network_rule ());
    attrs = __attrs;
  }

let register ?tf_module ?access_key_metadata_writes_enabled
    ?analytical_storage_enabled ?create_mode ?default_identity_type
    ?enable_automatic_failover ?enable_free_tier
    ?enable_multiple_write_locations ?id ?ip_range_filter
    ?is_virtual_network_filter_enabled ?key_vault_key_id ?kind
    ?local_authentication_disabled ?minimal_tls_version
    ?mongo_server_version ?network_acl_bypass_for_azure_services
    ?network_acl_bypass_ids ?partition_merge_enabled
    ?public_network_access_enabled ?tags ?timeouts ~location ~name
    ~offer_type ~resource_group_name ~analytical_storage ~backup
    ~capabilities ~capacity ~consistency_policy ~cors_rule
    ~geo_location ~identity ~restore ~virtual_network_rule __id =
  let (r : _ Tf_core.resource) =
    make ?access_key_metadata_writes_enabled
      ?analytical_storage_enabled ?create_mode ?default_identity_type
      ?enable_automatic_failover ?enable_free_tier
      ?enable_multiple_write_locations ?id ?ip_range_filter
      ?is_virtual_network_filter_enabled ?key_vault_key_id ?kind
      ?local_authentication_disabled ?minimal_tls_version
      ?mongo_server_version ?network_acl_bypass_for_azure_services
      ?network_acl_bypass_ids ?partition_merge_enabled
      ?public_network_access_enabled ?tags ?timeouts ~location ~name
      ~offer_type ~resource_group_name ~analytical_storage ~backup
      ~capabilities ~capacity ~consistency_policy ~cors_rule
      ~geo_location ~identity ~restore ~virtual_network_rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
