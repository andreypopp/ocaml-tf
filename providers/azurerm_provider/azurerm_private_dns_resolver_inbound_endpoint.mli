(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_private_dns_resolver_inbound_endpoint__ip_configurations
type azurerm_private_dns_resolver_inbound_endpoint__timeouts
type azurerm_private_dns_resolver_inbound_endpoint

val azurerm_private_dns_resolver_inbound_endpoint :
  ?tags:(string * string) list ->
  ?timeouts:azurerm_private_dns_resolver_inbound_endpoint__timeouts ->
  location:string ->
  name:string ->
  private_dns_resolver_id:string ->
  ip_configurations:
    azurerm_private_dns_resolver_inbound_endpoint__ip_configurations
    list ->
  string ->
  unit
