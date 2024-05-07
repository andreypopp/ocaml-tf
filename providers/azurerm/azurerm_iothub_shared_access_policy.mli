(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_iothub_shared_access_policy

val azurerm_iothub_shared_access_policy :
  ?device_connect:bool prop ->
  ?id:string prop ->
  ?registry_read:bool prop ->
  ?registry_write:bool prop ->
  ?service_connect:bool prop ->
  ?timeouts:timeouts ->
  iothub_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_iothub_shared_access_policy

val yojson_of_azurerm_iothub_shared_access_policy :
  azurerm_iothub_shared_access_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  device_connect : bool prop;
  id : string prop;
  iothub_name : string prop;
  name : string prop;
  primary_connection_string : string prop;
  primary_key : string prop;
  registry_read : bool prop;
  registry_write : bool prop;
  resource_group_name : string prop;
  secondary_connection_string : string prop;
  secondary_key : string prop;
  service_connect : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?device_connect:bool prop ->
  ?id:string prop ->
  ?registry_read:bool prop ->
  ?registry_write:bool prop ->
  ?service_connect:bool prop ->
  ?timeouts:timeouts ->
  iothub_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?device_connect:bool prop ->
  ?id:string prop ->
  ?registry_read:bool prop ->
  ?registry_write:bool prop ->
  ?service_connect:bool prop ->
  ?timeouts:timeouts ->
  iothub_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
