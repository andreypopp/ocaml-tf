(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iothub_shared_access_policy__timeouts
type azurerm_iothub_shared_access_policy

type t = private {
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

val azurerm_iothub_shared_access_policy :
  ?device_connect:bool prop ->
  ?id:string prop ->
  ?registry_read:bool prop ->
  ?registry_write:bool prop ->
  ?service_connect:bool prop ->
  ?timeouts:azurerm_iothub_shared_access_policy__timeouts ->
  iothub_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
