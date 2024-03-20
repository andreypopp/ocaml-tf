(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type target_dns_servers

val target_dns_servers :
  ?port:float prop ->
  ip_address:string prop ->
  unit ->
  target_dns_servers

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_private_dns_resolver_forwarding_rule

val azurerm_private_dns_resolver_forwarding_rule :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?timeouts:timeouts ->
  dns_forwarding_ruleset_id:string prop ->
  domain_name:string prop ->
  name:string prop ->
  target_dns_servers:target_dns_servers list ->
  unit ->
  azurerm_private_dns_resolver_forwarding_rule

val yojson_of_azurerm_private_dns_resolver_forwarding_rule :
  azurerm_private_dns_resolver_forwarding_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  dns_forwarding_ruleset_id : string prop;
  domain_name : string prop;
  enabled : bool prop;
  id : string prop;
  metadata : (string * string) list prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?timeouts:timeouts ->
  dns_forwarding_ruleset_id:string prop ->
  domain_name:string prop ->
  name:string prop ->
  target_dns_servers:target_dns_servers list ->
  string ->
  t

val make :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?timeouts:timeouts ->
  dns_forwarding_ruleset_id:string prop ->
  domain_name:string prop ->
  name:string prop ->
  target_dns_servers:target_dns_servers list ->
  string ->
  t Tf_core.resource
