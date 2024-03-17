(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iothub_device_update_instance__diagnostic_storage_account
type azurerm_iothub_device_update_instance__timeouts
type azurerm_iothub_device_update_instance

type t = private {
  device_update_account_id : string prop;
  diagnostic_enabled : bool prop;
  id : string prop;
  iothub_id : string prop;
  name : string prop;
  tags : (string * string) list prop;
}

val azurerm_iothub_device_update_instance :
  ?diagnostic_enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_iothub_device_update_instance__timeouts ->
  device_update_account_id:string prop ->
  iothub_id:string prop ->
  name:string prop ->
  diagnostic_storage_account:
    azurerm_iothub_device_update_instance__diagnostic_storage_account
    list ->
  string ->
  t
