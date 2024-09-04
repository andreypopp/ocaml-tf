(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_private_dns_resolver_dns_forwarding_ruleset

val azurerm_private_dns_resolver_dns_forwarding_ruleset :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  private_dns_resolver_outbound_endpoint_ids:string prop list ->
  resource_group_name:string prop ->
  unit ->
  azurerm_private_dns_resolver_dns_forwarding_ruleset

val yojson_of_azurerm_private_dns_resolver_dns_forwarding_ruleset :
  azurerm_private_dns_resolver_dns_forwarding_ruleset -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  private_dns_resolver_outbound_endpoint_ids : string list prop;
  resource_group_name : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  private_dns_resolver_outbound_endpoint_ids:string prop list ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  private_dns_resolver_outbound_endpoint_ids:string prop list ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
