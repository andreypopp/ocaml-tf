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
  ?timeouts:azurerm_cosmosdb_account__timeouts ->
  location:string prop ->
  name:string prop ->
  offer_type:string prop ->
  resource_group_name:string prop ->
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
