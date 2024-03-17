(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_private_dns_resolver_virtual_network_link__timeouts
type azurerm_private_dns_resolver_virtual_network_link

val azurerm_private_dns_resolver_virtual_network_link :
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?timeouts:
    azurerm_private_dns_resolver_virtual_network_link__timeouts ->
  dns_forwarding_ruleset_id:string prop ->
  name:string prop ->
  virtual_network_id:string prop ->
  string ->
  unit
