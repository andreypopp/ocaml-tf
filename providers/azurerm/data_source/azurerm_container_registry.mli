(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_container_registry

val azurerm_container_registry :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_container_registry

val yojson_of_azurerm_container_registry :
  azurerm_container_registry -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  admin_enabled : bool prop;
  admin_password : string prop;
  admin_username : string prop;
  data_endpoint_enabled : bool prop;
  id : string prop;
  location : string prop;
  login_server : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
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
