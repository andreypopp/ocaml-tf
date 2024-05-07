(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_postgresql_flexible_server

val azurerm_postgresql_flexible_server :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_postgresql_flexible_server

val yojson_of_azurerm_postgresql_flexible_server :
  azurerm_postgresql_flexible_server -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  administrator_login : string prop;
  auto_grow_enabled : bool prop;
  backup_retention_days : float prop;
  delegated_subnet_id : string prop;
  fqdn : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  sku_name : string prop;
  storage_mb : float prop;
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
