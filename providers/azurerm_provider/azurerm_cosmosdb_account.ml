(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cosmosdb_account__analytical_storage = {
  schema_type : string prop;  (** schema_type *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_account__analytical_storage *)

type azurerm_cosmosdb_account__backup = {
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
(** azurerm_cosmosdb_account__backup *)

type azurerm_cosmosdb_account__capabilities = {
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_account__capabilities *)

type azurerm_cosmosdb_account__capacity = {
  total_throughput_limit : float prop;  (** total_throughput_limit *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_account__capacity *)

type azurerm_cosmosdb_account__consistency_policy = {
  consistency_level : string prop;  (** consistency_level *)
  max_interval_in_seconds : float prop option; [@option]
      (** max_interval_in_seconds *)
  max_staleness_prefix : float prop option; [@option]
      (** max_staleness_prefix *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_account__consistency_policy *)

type azurerm_cosmosdb_account__cors_rule = {
  allowed_headers : string prop list;  (** allowed_headers *)
  allowed_methods : string prop list;  (** allowed_methods *)
  allowed_origins : string prop list;  (** allowed_origins *)
  exposed_headers : string prop list;  (** exposed_headers *)
  max_age_in_seconds : float prop option; [@option]
      (** max_age_in_seconds *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_account__cors_rule *)

type azurerm_cosmosdb_account__geo_location = {
  failover_priority : float prop;  (** failover_priority *)
  id : string prop;  (** id *)
  location : string prop;  (** location *)
  zone_redundant : bool prop option; [@option]  (** zone_redundant *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_account__geo_location *)

type azurerm_cosmosdb_account__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_account__identity *)

type azurerm_cosmosdb_account__restore__database = {
  collection_names : string prop list option; [@option]
      (** collection_names *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_account__restore__database *)

type azurerm_cosmosdb_account__restore__gremlin_database = {
  graph_names : string prop list option; [@option]
      (** graph_names *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_account__restore__gremlin_database *)

type azurerm_cosmosdb_account__restore = {
  restore_timestamp_in_utc : string prop;
      (** restore_timestamp_in_utc *)
  source_cosmosdb_account_id : string prop;
      (** source_cosmosdb_account_id *)
  tables_to_restore : string prop list option; [@option]
      (** tables_to_restore *)
  database : azurerm_cosmosdb_account__restore__database list;
  gremlin_database :
    azurerm_cosmosdb_account__restore__gremlin_database list;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_account__restore *)

type azurerm_cosmosdb_account__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_account__timeouts *)

type azurerm_cosmosdb_account__virtual_network_rule = {
  id : string prop;  (** id *)
  ignore_missing_vnet_service_endpoint : bool prop option; [@option]
      (** ignore_missing_vnet_service_endpoint *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_account__virtual_network_rule *)

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
  analytical_storage :
    azurerm_cosmosdb_account__analytical_storage list;
  backup : azurerm_cosmosdb_account__backup list;
  capabilities : azurerm_cosmosdb_account__capabilities list;
  capacity : azurerm_cosmosdb_account__capacity list;
  consistency_policy :
    azurerm_cosmosdb_account__consistency_policy list;
  cors_rule : azurerm_cosmosdb_account__cors_rule list;
  geo_location : azurerm_cosmosdb_account__geo_location list;
  identity : azurerm_cosmosdb_account__identity list;
  restore : azurerm_cosmosdb_account__restore list;
  timeouts : azurerm_cosmosdb_account__timeouts option;
  virtual_network_rule :
    azurerm_cosmosdb_account__virtual_network_rule list;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_account *)

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
    ~geo_location ~identity ~restore ~virtual_network_rule
    __resource_id =
  let __resource_type = "azurerm_cosmosdb_account" in
  let __resource =
    ({
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
      : azurerm_cosmosdb_account)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cosmosdb_account __resource);
  let __resource_attributes =
    ({
       access_key_metadata_writes_enabled =
         Prop.computed __resource_type __resource_id
           "access_key_metadata_writes_enabled";
       analytical_storage_enabled =
         Prop.computed __resource_type __resource_id
           "analytical_storage_enabled";
       connection_strings =
         Prop.computed __resource_type __resource_id
           "connection_strings";
       create_mode =
         Prop.computed __resource_type __resource_id "create_mode";
       default_identity_type =
         Prop.computed __resource_type __resource_id
           "default_identity_type";
       enable_automatic_failover =
         Prop.computed __resource_type __resource_id
           "enable_automatic_failover";
       enable_free_tier =
         Prop.computed __resource_type __resource_id
           "enable_free_tier";
       enable_multiple_write_locations =
         Prop.computed __resource_type __resource_id
           "enable_multiple_write_locations";
       endpoint =
         Prop.computed __resource_type __resource_id "endpoint";
       id = Prop.computed __resource_type __resource_id "id";
       ip_range_filter =
         Prop.computed __resource_type __resource_id
           "ip_range_filter";
       is_virtual_network_filter_enabled =
         Prop.computed __resource_type __resource_id
           "is_virtual_network_filter_enabled";
       key_vault_key_id =
         Prop.computed __resource_type __resource_id
           "key_vault_key_id";
       kind = Prop.computed __resource_type __resource_id "kind";
       local_authentication_disabled =
         Prop.computed __resource_type __resource_id
           "local_authentication_disabled";
       location =
         Prop.computed __resource_type __resource_id "location";
       minimal_tls_version =
         Prop.computed __resource_type __resource_id
           "minimal_tls_version";
       mongo_server_version =
         Prop.computed __resource_type __resource_id
           "mongo_server_version";
       name = Prop.computed __resource_type __resource_id "name";
       network_acl_bypass_for_azure_services =
         Prop.computed __resource_type __resource_id
           "network_acl_bypass_for_azure_services";
       network_acl_bypass_ids =
         Prop.computed __resource_type __resource_id
           "network_acl_bypass_ids";
       offer_type =
         Prop.computed __resource_type __resource_id "offer_type";
       partition_merge_enabled =
         Prop.computed __resource_type __resource_id
           "partition_merge_enabled";
       primary_key =
         Prop.computed __resource_type __resource_id "primary_key";
       primary_mongodb_connection_string =
         Prop.computed __resource_type __resource_id
           "primary_mongodb_connection_string";
       primary_readonly_key =
         Prop.computed __resource_type __resource_id
           "primary_readonly_key";
       primary_readonly_mongodb_connection_string =
         Prop.computed __resource_type __resource_id
           "primary_readonly_mongodb_connection_string";
       primary_readonly_sql_connection_string =
         Prop.computed __resource_type __resource_id
           "primary_readonly_sql_connection_string";
       primary_sql_connection_string =
         Prop.computed __resource_type __resource_id
           "primary_sql_connection_string";
       public_network_access_enabled =
         Prop.computed __resource_type __resource_id
           "public_network_access_enabled";
       read_endpoints =
         Prop.computed __resource_type __resource_id "read_endpoints";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       secondary_key =
         Prop.computed __resource_type __resource_id "secondary_key";
       secondary_mongodb_connection_string =
         Prop.computed __resource_type __resource_id
           "secondary_mongodb_connection_string";
       secondary_readonly_key =
         Prop.computed __resource_type __resource_id
           "secondary_readonly_key";
       secondary_readonly_mongodb_connection_string =
         Prop.computed __resource_type __resource_id
           "secondary_readonly_mongodb_connection_string";
       secondary_readonly_sql_connection_string =
         Prop.computed __resource_type __resource_id
           "secondary_readonly_sql_connection_string";
       secondary_sql_connection_string =
         Prop.computed __resource_type __resource_id
           "secondary_sql_connection_string";
       tags = Prop.computed __resource_type __resource_id "tags";
       write_endpoints =
         Prop.computed __resource_type __resource_id
           "write_endpoints";
     }
      : t)
  in
  __resource_attributes
