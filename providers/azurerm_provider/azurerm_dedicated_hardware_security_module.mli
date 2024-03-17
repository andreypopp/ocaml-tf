(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_dedicated_hardware_security_module__management_network_profile

type azurerm_dedicated_hardware_security_module__network_profile
type azurerm_dedicated_hardware_security_module__timeouts
type azurerm_dedicated_hardware_security_module

type t = private {
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  stamp_id : string prop;
  tags : (string * string) list prop;
  zones : string list prop;
}

val azurerm_dedicated_hardware_security_module :
  ?id:string prop ->
  ?stamp_id:string prop ->
  ?tags:(string * string prop) list ->
  ?zones:string prop list ->
  ?timeouts:azurerm_dedicated_hardware_security_module__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  management_network_profile:
    azurerm_dedicated_hardware_security_module__management_network_profile
    list ->
  network_profile:
    azurerm_dedicated_hardware_security_module__network_profile list ->
  string ->
  t
