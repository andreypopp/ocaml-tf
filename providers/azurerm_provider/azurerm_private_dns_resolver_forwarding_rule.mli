(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_private_dns_resolver_forwarding_rule__target_dns_servers
type azurerm_private_dns_resolver_forwarding_rule__timeouts
type azurerm_private_dns_resolver_forwarding_rule

val azurerm_private_dns_resolver_forwarding_rule :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?timeouts:azurerm_private_dns_resolver_forwarding_rule__timeouts ->
  dns_forwarding_ruleset_id:string prop ->
  domain_name:string prop ->
  name:string prop ->
  target_dns_servers:
    azurerm_private_dns_resolver_forwarding_rule__target_dns_servers
    list ->
  string ->
  unit
