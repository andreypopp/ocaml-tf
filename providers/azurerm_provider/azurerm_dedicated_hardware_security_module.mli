(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_dedicated_hardware_security_module__management_network_profile

type azurerm_dedicated_hardware_security_module__network_profile
type azurerm_dedicated_hardware_security_module__timeouts
type azurerm_dedicated_hardware_security_module

val azurerm_dedicated_hardware_security_module :
  ?id:string ->
  ?stamp_id:string ->
  ?tags:(string * string) list ->
  ?zones:string list ->
  ?timeouts:azurerm_dedicated_hardware_security_module__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku_name:string ->
  management_network_profile:
    azurerm_dedicated_hardware_security_module__management_network_profile
    list ->
  network_profile:
    azurerm_dedicated_hardware_security_module__network_profile list ->
  string ->
  unit
