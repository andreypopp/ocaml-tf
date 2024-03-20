(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type storage_profile = {
  auto_grow : string prop;  (** auto_grow *)
  backup_retention_days : float prop;  (** backup_retention_days *)
  geo_redundant_backup : string prop;  (** geo_redundant_backup *)
  storage_mb : float prop;  (** storage_mb *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_mariadb_server

val azurerm_mariadb_server :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_mariadb_server

val yojson_of_azurerm_mariadb_server : azurerm_mariadb_server -> json

(** RESOURCE REGISTRATION *)

type t = private {
  administrator_login : string prop;
  fqdn : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  ssl_enforcement : string prop;
  storage_profile : storage_profile list prop;
  tags : (string * string) list prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
