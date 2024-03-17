(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_private_dns_resolver_dns_forwarding_ruleset__timeouts
type azurerm_private_dns_resolver_dns_forwarding_ruleset

val azurerm_private_dns_resolver_dns_forwarding_ruleset :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:
    azurerm_private_dns_resolver_dns_forwarding_ruleset__timeouts ->
  location:string prop ->
  name:string prop ->
  private_dns_resolver_outbound_endpoint_ids:string prop list ->
  resource_group_name:string prop ->
  string ->
  unit
