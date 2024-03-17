(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_private_dns_resolver_outbound_endpoint__timeouts
type azurerm_private_dns_resolver_outbound_endpoint

val azurerm_private_dns_resolver_outbound_endpoint :
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_private_dns_resolver_outbound_endpoint__timeouts ->
  location:string ->
  name:string ->
  private_dns_resolver_id:string ->
  subnet_id:string ->
  string ->
  unit
