(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cosmosdb_account__analytical_storage = {
  schema_type : string;  (** schema_type *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_account__analytical_storage *)

type azurerm_cosmosdb_account__backup = {
  interval_in_minutes : float option; [@option]
      (** interval_in_minutes *)
  retention_in_hours : float option; [@option]
      (** retention_in_hours *)
  storage_redundancy : string option; [@option]
      (** storage_redundancy *)
  tier : string option; [@option]  (** tier *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_account__backup *)

type azurerm_cosmosdb_account__capabilities = {
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_account__capabilities *)

type azurerm_cosmosdb_account__capacity = {
  total_throughput_limit : float;  (** total_throughput_limit *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_account__capacity *)

type azurerm_cosmosdb_account__consistency_policy = {
  consistency_level : string;  (** consistency_level *)
  max_interval_in_seconds : float option; [@option]
      (** max_interval_in_seconds *)
  max_staleness_prefix : float option; [@option]
      (** max_staleness_prefix *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_account__consistency_policy *)

type azurerm_cosmosdb_account__cors_rule = {
  allowed_headers : string list;  (** allowed_headers *)
  allowed_methods : string list;  (** allowed_methods *)
  allowed_origins : string list;  (** allowed_origins *)
  exposed_headers : string list;  (** exposed_headers *)
  max_age_in_seconds : float option; [@option]
      (** max_age_in_seconds *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_account__cors_rule *)

type azurerm_cosmosdb_account__geo_location = {
  failover_priority : float;  (** failover_priority *)
  id : string;  (** id *)
  location : string;  (** location *)
  zone_redundant : bool option; [@option]  (** zone_redundant *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_account__geo_location *)

type azurerm_cosmosdb_account__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_account__identity *)

type azurerm_cosmosdb_account__restore__database = {
  collection_names : string list option; [@option]
      (** collection_names *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_account__restore__database *)

type azurerm_cosmosdb_account__restore__gremlin_database = {
  graph_names : string list option; [@option]  (** graph_names *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_account__restore__gremlin_database *)

type azurerm_cosmosdb_account__restore = {
  restore_timestamp_in_utc : string;  (** restore_timestamp_in_utc *)
  source_cosmosdb_account_id : string;
      (** source_cosmosdb_account_id *)
  tables_to_restore : string list option; [@option]
      (** tables_to_restore *)
  database : azurerm_cosmosdb_account__restore__database list;
  gremlin_database :
    azurerm_cosmosdb_account__restore__gremlin_database list;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_account__restore *)

type azurerm_cosmosdb_account__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_account__timeouts *)

type azurerm_cosmosdb_account__virtual_network_rule = {
  id : string;  (** id *)
  ignore_missing_vnet_service_endpoint : bool option; [@option]
      (** ignore_missing_vnet_service_endpoint *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_account__virtual_network_rule *)

type azurerm_cosmosdb_account = {
  access_key_metadata_writes_enabled : bool option; [@option]
      (** access_key_metadata_writes_enabled *)
  analytical_storage_enabled : bool option; [@option]
      (** analytical_storage_enabled *)
  create_mode : string option; [@option]  (** create_mode *)
  default_identity_type : string option; [@option]
      (** default_identity_type *)
  enable_automatic_failover : bool option; [@option]
      (** enable_automatic_failover *)
  enable_free_tier : bool option; [@option]  (** enable_free_tier *)
  enable_multiple_write_locations : bool option; [@option]
      (** enable_multiple_write_locations *)
  id : string option; [@option]  (** id *)
  ip_range_filter : string option; [@option]  (** ip_range_filter *)
  is_virtual_network_filter_enabled : bool option; [@option]
      (** is_virtual_network_filter_enabled *)
  key_vault_key_id : string option; [@option]
      (** key_vault_key_id *)
  kind : string option; [@option]  (** kind *)
  local_authentication_disabled : bool option; [@option]
      (** local_authentication_disabled *)
  location : string;  (** location *)
  minimal_tls_version : string option; [@option]
      (** minimal_tls_version *)
  mongo_server_version : string option; [@option]
      (** mongo_server_version *)
  name : string;  (** name *)
  network_acl_bypass_for_azure_services : bool option; [@option]
      (** network_acl_bypass_for_azure_services *)
  network_acl_bypass_ids : string list option; [@option]
      (** network_acl_bypass_ids *)
  offer_type : string;  (** offer_type *)
  partition_merge_enabled : bool option; [@option]
      (** partition_merge_enabled *)
  public_network_access_enabled : bool option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cosmosdb_account __resource);
  ()
