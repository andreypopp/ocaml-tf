(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type analytical_storage

val analytical_storage :
  schema_type:string prop -> unit -> analytical_storage

type backup

val backup :
  ?interval_in_minutes:float prop ->
  ?retention_in_hours:float prop ->
  ?storage_redundancy:string prop ->
  ?tier:string prop ->
  type_:string prop ->
  unit ->
  backup

type capabilities

val capabilities : name:string prop -> unit -> capabilities

type capacity

val capacity : total_throughput_limit:float prop -> unit -> capacity

type consistency_policy

val consistency_policy :
  ?max_interval_in_seconds:float prop ->
  ?max_staleness_prefix:float prop ->
  consistency_level:string prop ->
  unit ->
  consistency_policy

type cors_rule

val cors_rule :
  ?max_age_in_seconds:float prop ->
  allowed_headers:string prop list ->
  allowed_methods:string prop list ->
  allowed_origins:string prop list ->
  exposed_headers:string prop list ->
  unit ->
  cors_rule

type geo_location

val geo_location :
  ?zone_redundant:bool prop ->
  failover_priority:float prop ->
  location:string prop ->
  unit ->
  geo_location

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type restore__database

val restore__database :
  ?collection_names:string prop list ->
  name:string prop ->
  unit ->
  restore__database

type restore__gremlin_database

val restore__gremlin_database :
  ?graph_names:string prop list ->
  name:string prop ->
  unit ->
  restore__gremlin_database

type restore

val restore :
  ?tables_to_restore:string prop list ->
  ?gremlin_database:restore__gremlin_database list ->
  restore_timestamp_in_utc:string prop ->
  source_cosmosdb_account_id:string prop ->
  database:restore__database list ->
  unit ->
  restore

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type virtual_network_rule

val virtual_network_rule :
  ?ignore_missing_vnet_service_endpoint:bool prop ->
  id:string prop ->
  unit ->
  virtual_network_rule

type azurerm_cosmosdb_account

val azurerm_cosmosdb_account :
  ?access_key_metadata_writes_enabled:bool prop ->
  ?analytical_storage_enabled:bool prop ->
  ?create_mode:string prop ->
  ?default_identity_type:string prop ->
  ?enable_automatic_failover:bool prop ->
  ?enable_free_tier:bool prop ->
  ?enable_multiple_write_locations:bool prop ->
  ?id:string prop ->
  ?ip_range_filter:string prop ->
  ?is_virtual_network_filter_enabled:bool prop ->
  ?key_vault_key_id:string prop ->
  ?kind:string prop ->
  ?local_authentication_disabled:bool prop ->
  ?minimal_tls_version:string prop ->
  ?mongo_server_version:string prop ->
  ?network_acl_bypass_for_azure_services:bool prop ->
  ?network_acl_bypass_ids:string prop list ->
  ?partition_merge_enabled:bool prop ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?analytical_storage:analytical_storage list ->
  ?backup:backup list ->
  ?capacity:capacity list ->
  ?cors_rule:cors_rule list ->
  ?identity:identity list ->
  ?restore:restore list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  offer_type:string prop ->
  resource_group_name:string prop ->
  capabilities:capabilities list ->
  consistency_policy:consistency_policy list ->
  geo_location:geo_location list ->
  virtual_network_rule:virtual_network_rule list ->
  unit ->
  azurerm_cosmosdb_account

val yojson_of_azurerm_cosmosdb_account :
  azurerm_cosmosdb_account -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
  ?access_key_metadata_writes_enabled:bool prop ->
  ?analytical_storage_enabled:bool prop ->
  ?create_mode:string prop ->
  ?default_identity_type:string prop ->
  ?enable_automatic_failover:bool prop ->
  ?enable_free_tier:bool prop ->
  ?enable_multiple_write_locations:bool prop ->
  ?id:string prop ->
  ?ip_range_filter:string prop ->
  ?is_virtual_network_filter_enabled:bool prop ->
  ?key_vault_key_id:string prop ->
  ?kind:string prop ->
  ?local_authentication_disabled:bool prop ->
  ?minimal_tls_version:string prop ->
  ?mongo_server_version:string prop ->
  ?network_acl_bypass_for_azure_services:bool prop ->
  ?network_acl_bypass_ids:string prop list ->
  ?partition_merge_enabled:bool prop ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?analytical_storage:analytical_storage list ->
  ?backup:backup list ->
  ?capacity:capacity list ->
  ?cors_rule:cors_rule list ->
  ?identity:identity list ->
  ?restore:restore list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  offer_type:string prop ->
  resource_group_name:string prop ->
  capabilities:capabilities list ->
  consistency_policy:consistency_policy list ->
  geo_location:geo_location list ->
  virtual_network_rule:virtual_network_rule list ->
  string ->
  t

val make :
  ?access_key_metadata_writes_enabled:bool prop ->
  ?analytical_storage_enabled:bool prop ->
  ?create_mode:string prop ->
  ?default_identity_type:string prop ->
  ?enable_automatic_failover:bool prop ->
  ?enable_free_tier:bool prop ->
  ?enable_multiple_write_locations:bool prop ->
  ?id:string prop ->
  ?ip_range_filter:string prop ->
  ?is_virtual_network_filter_enabled:bool prop ->
  ?key_vault_key_id:string prop ->
  ?kind:string prop ->
  ?local_authentication_disabled:bool prop ->
  ?minimal_tls_version:string prop ->
  ?mongo_server_version:string prop ->
  ?network_acl_bypass_for_azure_services:bool prop ->
  ?network_acl_bypass_ids:string prop list ->
  ?partition_merge_enabled:bool prop ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?analytical_storage:analytical_storage list ->
  ?backup:backup list ->
  ?capacity:capacity list ->
  ?cors_rule:cors_rule list ->
  ?identity:identity list ->
  ?restore:restore list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  offer_type:string prop ->
  resource_group_name:string prop ->
  capabilities:capabilities list ->
  consistency_policy:consistency_policy list ->
  geo_location:geo_location list ->
  virtual_network_rule:virtual_network_rule list ->
  string ->
  t Tf_core.resource
