(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_dedicated_host_group

val azurerm_dedicated_host_group :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_dedicated_host_group

val yojson_of_azurerm_dedicated_host_group :
  azurerm_dedicated_host_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  automatic_placement_enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  platform_fault_domain_count : float prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  zones : string list prop;
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
