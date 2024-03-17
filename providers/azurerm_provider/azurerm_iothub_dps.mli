(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iothub_dps__ip_filter_rule
type azurerm_iothub_dps__linked_hub
type azurerm_iothub_dps__sku
type azurerm_iothub_dps__timeouts
type azurerm_iothub_dps

val azurerm_iothub_dps :
  ?allocation_policy:string prop ->
  ?data_residency_enabled:bool prop ->
  ?id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_iothub_dps__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  ip_filter_rule:azurerm_iothub_dps__ip_filter_rule list ->
  linked_hub:azurerm_iothub_dps__linked_hub list ->
  sku:azurerm_iothub_dps__sku list ->
  string ->
  unit
