(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_private_dns_resolver_forwarding_rule__target_dns_servers
type azurerm_private_dns_resolver_forwarding_rule__timeouts
type azurerm_private_dns_resolver_forwarding_rule

val azurerm_private_dns_resolver_forwarding_rule :
  ?enabled:bool ->
  ?id:string ->
  ?metadata:(string * string) list ->
  ?timeouts:azurerm_private_dns_resolver_forwarding_rule__timeouts ->
  dns_forwarding_ruleset_id:string ->
  domain_name:string ->
  name:string ->
  target_dns_servers:
    azurerm_private_dns_resolver_forwarding_rule__target_dns_servers
    list ->
  string ->
  unit
