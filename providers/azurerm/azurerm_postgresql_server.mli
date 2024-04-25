(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity

val identity : type_:string prop -> unit -> identity

type threat_detection_policy

val threat_detection_policy :
  ?disabled_alerts:string prop list ->
  ?email_account_admins:bool prop ->
  ?email_addresses:string prop list ->
  ?enabled:bool prop ->
  ?retention_days:float prop ->
  ?storage_account_access_key:string prop ->
  ?storage_endpoint:string prop ->
  unit ->
  threat_detection_policy

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_postgresql_server

val azurerm_postgresql_server :
  ?administrator_login:string prop ->
  ?administrator_login_password:string prop ->
  ?auto_grow_enabled:bool prop ->
  ?backup_retention_days:float prop ->
  ?create_mode:string prop ->
  ?creation_source_server_id:string prop ->
  ?geo_redundant_backup_enabled:bool prop ->
  ?id:string prop ->
  ?infrastructure_encryption_enabled:bool prop ->
  ?public_network_access_enabled:bool prop ->
  ?restore_point_in_time:string prop ->
  ?ssl_minimal_tls_version_enforced:string prop ->
  ?storage_mb:float prop ->
  ?tags:(string * string prop) list ->
  ?identity:identity list ->
  ?threat_detection_policy:threat_detection_policy list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  ssl_enforcement_enabled:bool prop ->
  version:string prop ->
  unit ->
  azurerm_postgresql_server

val yojson_of_azurerm_postgresql_server :
  azurerm_postgresql_server -> json

(** RESOURCE REGISTRATION *)

type t = private {
  administrator_login : string prop;
  administrator_login_password : string prop;
  auto_grow_enabled : bool prop;
  backup_retention_days : float prop;
  create_mode : string prop;
  creation_source_server_id : string prop;
  fqdn : string prop;
  geo_redundant_backup_enabled : bool prop;
  id : string prop;
  infrastructure_encryption_enabled : bool prop;
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  restore_point_in_time : string prop;
  sku_name : string prop;
  ssl_enforcement_enabled : bool prop;
  ssl_minimal_tls_version_enforced : string prop;
  storage_mb : float prop;
  tags : (string * string) list prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?administrator_login:string prop ->
  ?administrator_login_password:string prop ->
  ?auto_grow_enabled:bool prop ->
  ?backup_retention_days:float prop ->
  ?create_mode:string prop ->
  ?creation_source_server_id:string prop ->
  ?geo_redundant_backup_enabled:bool prop ->
  ?id:string prop ->
  ?infrastructure_encryption_enabled:bool prop ->
  ?public_network_access_enabled:bool prop ->
  ?restore_point_in_time:string prop ->
  ?ssl_minimal_tls_version_enforced:string prop ->
  ?storage_mb:float prop ->
  ?tags:(string * string prop) list ->
  ?identity:identity list ->
  ?threat_detection_policy:threat_detection_policy list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  ssl_enforcement_enabled:bool prop ->
  version:string prop ->
  string ->
  t

val make :
  ?administrator_login:string prop ->
  ?administrator_login_password:string prop ->
  ?auto_grow_enabled:bool prop ->
  ?backup_retention_days:float prop ->
  ?create_mode:string prop ->
  ?creation_source_server_id:string prop ->
  ?geo_redundant_backup_enabled:bool prop ->
  ?id:string prop ->
  ?infrastructure_encryption_enabled:bool prop ->
  ?public_network_access_enabled:bool prop ->
  ?restore_point_in_time:string prop ->
  ?ssl_minimal_tls_version_enforced:string prop ->
  ?storage_mb:float prop ->
  ?tags:(string * string prop) list ->
  ?identity:identity list ->
  ?threat_detection_policy:threat_detection_policy list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  ssl_enforcement_enabled:bool prop ->
  version:string prop ->
  string ->
  t Tf_core.resource
