(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type target_dns_servers = {
  ip_address : string prop;  (** ip_address *)
  port : float prop;  (** port *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_private_dns_resolver_forwarding_rule

val azurerm_private_dns_resolver_forwarding_rule :
  ?id:string prop ->
  ?timeouts:timeouts ->
  dns_forwarding_ruleset_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_private_dns_resolver_forwarding_rule

val yojson_of_azurerm_private_dns_resolver_forwarding_rule :
  azurerm_private_dns_resolver_forwarding_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  dns_forwarding_ruleset_id : string prop;
  domain_name : string prop;
  enabled : bool prop;
  id : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  target_dns_servers : target_dns_servers list prop;
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
