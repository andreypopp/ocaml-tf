(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_public_ip

val azurerm_public_ip :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_public_ip

val yojson_of_azurerm_public_ip : azurerm_public_ip -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allocation_method : string prop;
  ddos_protection_mode : string prop;
  ddos_protection_plan_id : string prop;
  domain_name_label : string prop;
  fqdn : string prop;
  id : string prop;
  idle_timeout_in_minutes : float prop;
  ip_address : string prop;
  ip_tags : string Tf_core.assoc prop;
  ip_version : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  reverse_fqdn : string prop;
  sku : string prop;
  tags : string Tf_core.assoc prop;
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
