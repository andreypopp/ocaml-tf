(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type initial_replica_set

val initial_replica_set :
  subnet_id:string prop -> unit -> initial_replica_set

type notifications

val notifications :
  ?additional_recipients:string prop list ->
  ?notify_dc_admins:bool prop ->
  ?notify_global_admins:bool prop ->
  unit ->
  notifications

type secure_ldap

val secure_ldap :
  ?external_access_enabled:bool prop ->
  enabled:bool prop ->
  pfx_certificate:string prop ->
  pfx_certificate_password:string prop ->
  unit ->
  secure_ldap

type security

val security :
  ?kerberos_armoring_enabled:bool prop ->
  ?kerberos_rc4_encryption_enabled:bool prop ->
  ?ntlm_v1_enabled:bool prop ->
  ?sync_kerberos_passwords:bool prop ->
  ?sync_ntlm_passwords:bool prop ->
  ?sync_on_prem_passwords:bool prop ->
  ?tls_v1_enabled:bool prop ->
  unit ->
  security

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_active_directory_domain_service

val azurerm_active_directory_domain_service :
  ?domain_configuration_type:string prop ->
  ?filtered_sync_enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  initial_replica_set:initial_replica_set list ->
  notifications:notifications list ->
  secure_ldap:secure_ldap list ->
  security:security list ->
  unit ->
  azurerm_active_directory_domain_service

val yojson_of_azurerm_active_directory_domain_service :
  azurerm_active_directory_domain_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  deployment_id : string prop;
  domain_configuration_type : string prop;
  domain_name : string prop;
  filtered_sync_enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  resource_id : string prop;
  sku : string prop;
  sync_owner : string prop;
  tags : (string * string) list prop;
  tenant_id : string prop;
  version : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?domain_configuration_type:string prop ->
  ?filtered_sync_enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  initial_replica_set:initial_replica_set list ->
  notifications:notifications list ->
  secure_ldap:secure_ldap list ->
  security:security list ->
  string ->
  t

val make :
  ?domain_configuration_type:string prop ->
  ?filtered_sync_enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  initial_replica_set:initial_replica_set list ->
  notifications:notifications list ->
  secure_ldap:secure_ldap list ->
  security:security list ->
  string ->
  t Tf_core.resource
