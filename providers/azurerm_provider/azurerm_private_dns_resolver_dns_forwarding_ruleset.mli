(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_private_dns_resolver_dns_forwarding_ruleset__timeouts
type azurerm_private_dns_resolver_dns_forwarding_ruleset

val azurerm_private_dns_resolver_dns_forwarding_ruleset :
  ?tags:(string * string) list ->
  ?timeouts:
    azurerm_private_dns_resolver_dns_forwarding_ruleset__timeouts ->
  location:string ->
  name:string ->
  private_dns_resolver_outbound_endpoint_ids:string list ->
  resource_group_name:string ->
  string ->
  unit
