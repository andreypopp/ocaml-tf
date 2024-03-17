(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_account__analytical_storage
type azurerm_cosmosdb_account__backup
type azurerm_cosmosdb_account__capabilities
type azurerm_cosmosdb_account__capacity
type azurerm_cosmosdb_account__consistency_policy
type azurerm_cosmosdb_account__cors_rule
type azurerm_cosmosdb_account__geo_location
type azurerm_cosmosdb_account__identity
type azurerm_cosmosdb_account__restore__database
type azurerm_cosmosdb_account__restore__gremlin_database
type azurerm_cosmosdb_account__restore
type azurerm_cosmosdb_account__timeouts
type azurerm_cosmosdb_account__virtual_network_rule
type azurerm_cosmosdb_account

val azurerm_cosmosdb_account :
  ?access_key_metadata_writes_enabled:bool ->
  ?analytical_storage_enabled:bool ->
  ?create_mode:string ->
  ?default_identity_type:string ->
  ?enable_automatic_failover:bool ->
  ?enable_free_tier:bool ->
  ?enable_multiple_write_locations:bool ->
  ?id:string ->
  ?ip_range_filter:string ->
  ?is_virtual_network_filter_enabled:bool ->
  ?key_vault_key_id:string ->
  ?kind:string ->
  ?local_authentication_disabled:bool ->
  ?minimal_tls_version:string ->
  ?mongo_server_version:string ->
  ?network_acl_bypass_for_azure_services:bool ->
  ?network_acl_bypass_ids:string list ->
  ?partition_merge_enabled:bool ->
  ?public_network_access_enabled:bool ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_cosmosdb_account__timeouts ->
  location:string ->
  name:string ->
  offer_type:string ->
  resource_group_name:string ->
  analytical_storage:
    azurerm_cosmosdb_account__analytical_storage list ->
  backup:azurerm_cosmosdb_account__backup list ->
  capabilities:azurerm_cosmosdb_account__capabilities list ->
  capacity:azurerm_cosmosdb_account__capacity list ->
  consistency_policy:
    azurerm_cosmosdb_account__consistency_policy list ->
  cors_rule:azurerm_cosmosdb_account__cors_rule list ->
  geo_location:azurerm_cosmosdb_account__geo_location list ->
  identity:azurerm_cosmosdb_account__identity list ->
  restore:azurerm_cosmosdb_account__restore list ->
  virtual_network_rule:
    azurerm_cosmosdb_account__virtual_network_rule list ->
  string ->
  unit
