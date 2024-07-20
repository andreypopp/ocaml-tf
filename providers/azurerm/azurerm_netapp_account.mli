(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type active_directory

val active_directory :
  ?aes_encryption_enabled:bool prop ->
  ?kerberos_ad_name:string prop ->
  ?kerberos_kdc_ip:string prop ->
  ?ldap_over_tls_enabled:bool prop ->
  ?ldap_signing_enabled:bool prop ->
  ?local_nfs_users_with_ldap_allowed:bool prop ->
  ?organizational_unit:string prop ->
  ?server_root_ca_certificate:string prop ->
  ?site_name:string prop ->
  dns_servers:string prop list ->
  domain:string prop ->
  password:string prop ->
  smb_server_name:string prop ->
  username:string prop ->
  unit ->
  active_directory

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

type azurerm_netapp_account

val azurerm_netapp_account :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?active_directory:active_directory list ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_netapp_account

val yojson_of_azurerm_netapp_account : azurerm_netapp_account -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?active_directory:active_directory list ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?active_directory:active_directory list ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
