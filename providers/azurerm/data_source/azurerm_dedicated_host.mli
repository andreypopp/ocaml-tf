(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_dedicated_host

val azurerm_dedicated_host :
  ?id:string prop ->
  ?timeouts:timeouts ->
  dedicated_host_group_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_dedicated_host

val yojson_of_azurerm_dedicated_host : azurerm_dedicated_host -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  dedicated_host_group_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  dedicated_host_group_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  dedicated_host_group_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
