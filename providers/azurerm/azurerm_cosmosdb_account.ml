(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type analytical_storage = {
  schema_type : string prop;  (** schema_type *)
}
[@@deriving yojson_of]
(** analytical_storage *)

type backup = {
  interval_in_minutes : float prop option; [@option]
      (** interval_in_minutes *)
  retention_in_hours : float prop option; [@option]
      (** retention_in_hours *)
  storage_redundancy : string prop option; [@option]
      (** storage_redundancy *)
  tier : string prop option; [@option]  (** tier *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** backup *)

type capabilities = { name : string prop  (** name *) }
[@@deriving yojson_of]
(** capabilities *)

type capacity = {
  total_throughput_limit : float prop;  (** total_throughput_limit *)
}
[@@deriving yojson_of]
(** capacity *)

type consistency_policy = {
  consistency_level : string prop;  (** consistency_level *)
  max_interval_in_seconds : float prop option; [@option]
      (** max_interval_in_seconds *)
  max_staleness_prefix : float prop option; [@option]
      (** max_staleness_prefix *)
}
[@@deriving yojson_of]
(** consistency_policy *)

type cors_rule = {
  allowed_headers : string prop list;  (** allowed_headers *)
  allowed_methods : string prop list;  (** allowed_methods *)
  allowed_origins : string prop list;  (** allowed_origins *)
  exposed_headers : string prop list;  (** exposed_headers *)
  max_age_in_seconds : float prop option; [@option]
      (** max_age_in_seconds *)
}
[@@deriving yojson_of]
(** cors_rule *)

type geo_location = {
  failover_priority : float prop;  (** failover_priority *)
  location : string prop;  (** location *)
  zone_redundant : bool prop option; [@option]  (** zone_redundant *)
}
[@@deriving yojson_of]
(** geo_location *)

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type restore__database = {
  collection_names : string prop list option; [@option]
      (** collection_names *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** restore__database *)

type restore__gremlin_database = {
  graph_names : string prop list option; [@option]
      (** graph_names *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** restore__gremlin_database *)

type restore = {
  restore_timestamp_in_utc : string prop;
      (** restore_timestamp_in_utc *)
  source_cosmosdb_account_id : string prop;
      (** source_cosmosdb_account_id *)
  tables_to_restore : string prop list option; [@option]
      (** tables_to_restore *)
  database : restore__database list;
  gremlin_database : restore__gremlin_database list;
}
[@@deriving yojson_of]
(** restore *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type virtual_network_rule = {
  id : string prop;  (** id *)
  ignore_missing_vnet_service_endpoint : bool prop option; [@option]
      (** ignore_missing_vnet_service_endpoint *)
}
[@@deriving yojson_of]
(** virtual_network_rule *)

type azurerm_cosmosdb_account = {
  access_key_metadata_writes_enabled : bool prop option; [@option]
      (** access_key_metadata_writes_enabled *)
  analytical_storage_enabled : bool prop option; [@option]
      (** analytical_storage_enabled *)
  create_mode : string prop option; [@option]  (** create_mode *)
  default_identity_type : string prop option; [@option]
      (** default_identity_type *)
  enable_automatic_failover : bool prop option; [@option]
      (** enable_automatic_failover *)
  enable_free_tier : bool prop option; [@option]
      (** enable_free_tier *)
  enable_multiple_write_locations : bool prop option; [@option]
      (** enable_multiple_write_locations *)
  id : string prop option; [@option]  (** id *)
  ip_range_filter : string prop option; [@option]
      (** ip_range_filter *)
  is_virtual_network_filter_enabled : bool prop option; [@option]
      (** is_virtual_network_filter_enabled *)
  key_vault_key_id : string prop option; [@option]
      (** key_vault_key_id *)
  kind : string prop option; [@option]  (** kind *)
  local_authentication_disabled : bool prop option; [@option]
      (** local_authentication_disabled *)
  location : string prop;  (** location *)
  minimal_tls_version : string prop option; [@option]
      (** minimal_tls_version *)
  mongo_server_version : string prop option; [@option]
      (** mongo_server_version *)
  name : string prop;  (** name *)
  network_acl_bypass_for_azure_services : bool prop option; [@option]
      (** network_acl_bypass_for_azure_services *)
  network_acl_bypass_ids : string prop list option; [@option]
      (** network_acl_bypass_ids *)
  offer_type : string prop;  (** offer_type *)
  partition_merge_enabled : bool prop option; [@option]
      (** partition_merge_enabled *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
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
[@@deriving yojson_of]
(** azurerm_cosmosdb_account *)

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
