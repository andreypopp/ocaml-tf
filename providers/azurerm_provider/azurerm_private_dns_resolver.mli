(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_private_dns_resolver__timeouts
type azurerm_private_dns_resolver

val azurerm_private_dns_resolver :
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_private_dns_resolver__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  virtual_network_id:string ->
  string ->
  unit
