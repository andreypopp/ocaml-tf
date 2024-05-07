(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type diagnostic_storage_account

val diagnostic_storage_account :
  connection_string:string prop ->
  id:string prop ->
  unit ->
  diagnostic_storage_account

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_iothub_device_update_instance

val azurerm_iothub_device_update_instance :
  ?diagnostic_enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?diagnostic_storage_account:diagnostic_storage_account list ->
  ?timeouts:timeouts ->
  device_update_account_id:string prop ->
  iothub_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_iothub_device_update_instance

val yojson_of_azurerm_iothub_device_update_instance :
  azurerm_iothub_device_update_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  device_update_account_id : string prop;
  diagnostic_enabled : bool prop;
  id : string prop;
  iothub_id : string prop;
  name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?diagnostic_enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?diagnostic_storage_account:diagnostic_storage_account list ->
  ?timeouts:timeouts ->
  device_update_account_id:string prop ->
  iothub_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?diagnostic_enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?diagnostic_storage_account:diagnostic_storage_account list ->
  ?timeouts:timeouts ->
  device_update_account_id:string prop ->
  iothub_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
