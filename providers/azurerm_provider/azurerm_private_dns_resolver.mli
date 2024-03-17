(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_private_dns_resolver__timeouts
type azurerm_private_dns_resolver

val azurerm_private_dns_resolver :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_private_dns_resolver__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  virtual_network_id:string prop ->
  string ->
  unit
