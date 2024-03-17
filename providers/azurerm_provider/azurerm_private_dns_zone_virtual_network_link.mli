(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_private_dns_zone_virtual_network_link__timeouts
type azurerm_private_dns_zone_virtual_network_link

val azurerm_private_dns_zone_virtual_network_link :
  ?id:string prop ->
  ?registration_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_private_dns_zone_virtual_network_link__timeouts ->
  name:string prop ->
  private_dns_zone_name:string prop ->
  resource_group_name:string prop ->
  virtual_network_id:string prop ->
  string ->
  unit
