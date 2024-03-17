(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_private_dns_resolver_inbound_endpoint__ip_configurations
type azurerm_private_dns_resolver_inbound_endpoint__timeouts
type azurerm_private_dns_resolver_inbound_endpoint

val azurerm_private_dns_resolver_inbound_endpoint :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_private_dns_resolver_inbound_endpoint__timeouts ->
  location:string prop ->
  name:string prop ->
  private_dns_resolver_id:string prop ->
  ip_configurations:
    azurerm_private_dns_resolver_inbound_endpoint__ip_configurations
    list ->
  string ->
  unit
