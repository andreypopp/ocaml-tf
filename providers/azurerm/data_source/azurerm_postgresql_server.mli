(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity = {
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_postgresql_server

val azurerm_postgresql_server :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_postgresql_server

val yojson_of_azurerm_postgresql_server :
  azurerm_postgresql_server -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  administrator_login : string prop;
  fqdn : string prop;
  id : string prop;
  identity : identity list prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
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
