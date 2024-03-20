(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_private_dns_resolver_virtual_network_link

val azurerm_private_dns_resolver_virtual_network_link :
  ?id:string prop ->
  ?timeouts:timeouts ->
  dns_forwarding_ruleset_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_private_dns_resolver_virtual_network_link

val yojson_of_azurerm_private_dns_resolver_virtual_network_link :
  azurerm_private_dns_resolver_virtual_network_link -> json

(** RESOURCE REGISTRATION *)

type t = private {
  dns_forwarding_ruleset_id : string prop;
  id : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  virtual_network_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  dns_forwarding_ruleset_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  dns_forwarding_ruleset_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
