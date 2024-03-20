(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_private_dns_zone_virtual_network_link

val azurerm_private_dns_zone_virtual_network_link :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  private_dns_zone_name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_private_dns_zone_virtual_network_link

val yojson_of_azurerm_private_dns_zone_virtual_network_link :
  azurerm_private_dns_zone_virtual_network_link -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name : string prop;
  private_dns_zone_name : string prop;
  registration_enabled : bool prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  virtual_network_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  private_dns_zone_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  private_dns_zone_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
