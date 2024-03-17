(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_private_dns_zone_virtual_network_link__timeouts
type azurerm_private_dns_zone_virtual_network_link

val azurerm_private_dns_zone_virtual_network_link :
  ?registration_enabled:bool ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_private_dns_zone_virtual_network_link__timeouts ->
  name:string ->
  private_dns_zone_name:string ->
  resource_group_name:string ->
  virtual_network_id:string ->
  string ->
  unit
