(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type management_network_profile

val management_network_profile :
  network_interface_private_ip_addresses:string prop list ->
  subnet_id:string prop ->
  unit ->
  management_network_profile

type network_profile

val network_profile :
  network_interface_private_ip_addresses:string prop list ->
  subnet_id:string prop ->
  unit ->
  network_profile

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_dedicated_hardware_security_module

val azurerm_dedicated_hardware_security_module :
  ?id:string prop ->
  ?stamp_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?zones:string prop list ->
  ?management_network_profile:management_network_profile list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  network_profile:network_profile list ->
  unit ->
  azurerm_dedicated_hardware_security_module

val yojson_of_azurerm_dedicated_hardware_security_module :
  azurerm_dedicated_hardware_security_module -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  stamp_id : string prop;
  tags : string Tf_core.assoc prop;
  zones : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?stamp_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?zones:string prop list ->
  ?management_network_profile:management_network_profile list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  network_profile:network_profile list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?stamp_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?zones:string prop list ->
  ?management_network_profile:management_network_profile list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  network_profile:network_profile list ->
  string ->
  t Tf_core.resource
