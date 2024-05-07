(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_mariadb_server

val azurerm_mariadb_server :
  ?administrator_login:string prop ->
  ?administrator_login_password:string prop ->
  ?auto_grow_enabled:bool prop ->
  ?backup_retention_days:float prop ->
  ?create_mode:string prop ->
  ?creation_source_server_id:string prop ->
  ?geo_redundant_backup_enabled:bool prop ->
  ?id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?restore_point_in_time:string prop ->
  ?ssl_minimal_tls_version_enforced:string prop ->
  ?storage_mb:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  ssl_enforcement_enabled:bool prop ->
  version:string prop ->
  unit ->
  azurerm_mariadb_server

val yojson_of_azurerm_mariadb_server : azurerm_mariadb_server -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  administrator_login : string prop;
  administrator_login_password : string prop;
  auto_grow_enabled : bool prop;
  backup_retention_days : float prop;
  create_mode : string prop;
  creation_source_server_id : string prop;
  fqdn : string prop;
  geo_redundant_backup_enabled : bool prop;
  id : string prop;
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
  ?public_network_access_enabled:bool prop ->
  ?restore_point_in_time:string prop ->
  ?ssl_minimal_tls_version_enforced:string prop ->
  ?storage_mb:float prop ->
  ?tags:(string * string prop) list ->
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
  ?public_network_access_enabled:bool prop ->
  ?restore_point_in_time:string prop ->
  ?ssl_minimal_tls_version_enforced:string prop ->
  ?storage_mb:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  ssl_enforcement_enabled:bool prop ->
  version:string prop ->
  string ->
  t Tf_core.resource
