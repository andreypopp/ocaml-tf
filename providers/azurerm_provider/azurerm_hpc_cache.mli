(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_hpc_cache__default_access_policy__access_rule
type azurerm_hpc_cache__default_access_policy
type azurerm_hpc_cache__directory_active_directory
type azurerm_hpc_cache__directory_flat_file
type azurerm_hpc_cache__directory_ldap__bind
type azurerm_hpc_cache__directory_ldap
type azurerm_hpc_cache__dns
type azurerm_hpc_cache__identity
type azurerm_hpc_cache__timeouts
type azurerm_hpc_cache

val azurerm_hpc_cache :
  ?automatically_rotate_key_to_latest_enabled:bool ->
  ?key_vault_key_id:string ->
  ?mtu:float ->
  ?ntp_server:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_hpc_cache__timeouts ->
  cache_size_in_gb:float ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku_name:string ->
  subnet_id:string ->
  default_access_policy:azurerm_hpc_cache__default_access_policy list ->
  directory_active_directory:
    azurerm_hpc_cache__directory_active_directory list ->
  directory_flat_file:azurerm_hpc_cache__directory_flat_file list ->
  directory_ldap:azurerm_hpc_cache__directory_ldap list ->
  dns:azurerm_hpc_cache__dns list ->
  identity:azurerm_hpc_cache__identity list ->
  string ->
  unit
