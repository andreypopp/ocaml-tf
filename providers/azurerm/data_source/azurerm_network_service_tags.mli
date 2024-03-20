(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_network_service_tags

val azurerm_network_service_tags :
  ?id:string prop ->
  ?location_filter:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  service:string prop ->
  unit ->
  azurerm_network_service_tags

val yojson_of_azurerm_network_service_tags :
  azurerm_network_service_tags -> json

(** RESOURCE REGISTRATION *)

type t = private {
  address_prefixes : string list prop;
  id : string prop;
  ipv4_cidrs : string list prop;
  ipv6_cidrs : string list prop;
  location : string prop;
  location_filter : string prop;
  name : string prop;
  service : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?location_filter:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  service:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?location_filter:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  service:string prop ->
  string ->
  t Tf_core.resource
