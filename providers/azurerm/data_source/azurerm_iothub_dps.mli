(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_iothub_dps

val azurerm_iothub_dps :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_iothub_dps

val yojson_of_azurerm_iothub_dps : azurerm_iothub_dps -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allocation_policy : string prop;
  device_provisioning_host_name : string prop;
  id : string prop;
  id_scope : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  service_operations_host_name : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
