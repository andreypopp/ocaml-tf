(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type default_access_policy__access_rule

val default_access_policy__access_rule :
  ?anonymous_gid:float prop ->
  ?anonymous_uid:float prop ->
  ?filter:string prop ->
  ?root_squash_enabled:bool prop ->
  ?submount_access_enabled:bool prop ->
  ?suid_enabled:bool prop ->
  access:string prop ->
  scope:string prop ->
  unit ->
  default_access_policy__access_rule

type default_access_policy

val default_access_policy :
  access_rule:default_access_policy__access_rule list ->
  unit ->
  default_access_policy

type directory_active_directory

val directory_active_directory :
  ?dns_secondary_ip:string prop ->
  cache_netbios_name:string prop ->
  dns_primary_ip:string prop ->
  domain_name:string prop ->
  domain_netbios_name:string prop ->
  password:string prop ->
  username:string prop ->
  unit ->
  directory_active_directory

type directory_flat_file

val directory_flat_file :
  group_file_uri:string prop ->
  password_file_uri:string prop ->
  unit ->
  directory_flat_file

type directory_ldap__bind

val directory_ldap__bind :
  dn:string prop ->
  password:string prop ->
  unit ->
  directory_ldap__bind

type directory_ldap

val directory_ldap :
  ?certificate_validation_uri:string prop ->
  ?download_certificate_automatically:bool prop ->
  ?encrypted:bool prop ->
  base_dn:string prop ->
  server:string prop ->
  bind:directory_ldap__bind list ->
  unit ->
  directory_ldap

type dns

val dns :
  ?search_domain:string prop ->
  servers:string prop list ->
  unit ->
  dns

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_hpc_cache

val azurerm_hpc_cache :
  ?automatically_rotate_key_to_latest_enabled:bool prop ->
  ?id:string prop ->
  ?key_vault_key_id:string prop ->
  ?mtu:float prop ->
  ?ntp_server:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  cache_size_in_gb:float prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  subnet_id:string prop ->
  default_access_policy:default_access_policy list ->
  directory_active_directory:directory_active_directory list ->
  directory_flat_file:directory_flat_file list ->
  directory_ldap:directory_ldap list ->
  dns:dns list ->
  identity:identity list ->
  unit ->
  azurerm_hpc_cache

val yojson_of_azurerm_hpc_cache : azurerm_hpc_cache -> json

(** RESOURCE REGISTRATION *)

type t = private {
  automatically_rotate_key_to_latest_enabled : bool prop;
  cache_size_in_gb : float prop;
  id : string prop;
  key_vault_key_id : string prop;
  location : string prop;
  mount_addresses : string list prop;
  mtu : float prop;
  name : string prop;
  ntp_server : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?automatically_rotate_key_to_latest_enabled:bool prop ->
  ?id:string prop ->
  ?key_vault_key_id:string prop ->
  ?mtu:float prop ->
  ?ntp_server:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  cache_size_in_gb:float prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  subnet_id:string prop ->
  default_access_policy:default_access_policy list ->
  directory_active_directory:directory_active_directory list ->
  directory_flat_file:directory_flat_file list ->
  directory_ldap:directory_ldap list ->
  dns:dns list ->
  identity:identity list ->
  string ->
  t

val make :
  ?automatically_rotate_key_to_latest_enabled:bool prop ->
  ?id:string prop ->
  ?key_vault_key_id:string prop ->
  ?mtu:float prop ->
  ?ntp_server:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  cache_size_in_gb:float prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  subnet_id:string prop ->
  default_access_policy:default_access_policy list ->
  directory_active_directory:directory_active_directory list ->
  directory_flat_file:directory_flat_file list ->
  directory_ldap:directory_ldap list ->
  dns:dns list ->
  identity:identity list ->
  string ->
  t Tf_core.resource
