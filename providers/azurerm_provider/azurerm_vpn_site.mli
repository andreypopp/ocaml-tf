(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_vpn_site__link__bgp
type azurerm_vpn_site__link
type azurerm_vpn_site__o365_policy__traffic_category
type azurerm_vpn_site__o365_policy
type azurerm_vpn_site__timeouts
type azurerm_vpn_site

val azurerm_vpn_site :
  ?address_cidrs:string list ->
  ?device_model:string ->
  ?device_vendor:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_vpn_site__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  virtual_wan_id:string ->
  link:azurerm_vpn_site__link list ->
  o365_policy:azurerm_vpn_site__o365_policy list ->
  string ->
  unit
