(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type notification_settings

val notification_settings :
  ?email:string prop ->
  ?time_in_minutes:float prop ->
  ?webhook_url:string prop ->
  enabled:bool prop ->
  unit ->
  notification_settings

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_dev_test_global_vm_shutdown_schedule

val azurerm_dev_test_global_vm_shutdown_schedule :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  daily_recurrence_time:string prop ->
  location:string prop ->
  timezone:string prop ->
  virtual_machine_id:string prop ->
  notification_settings:notification_settings list ->
  unit ->
  azurerm_dev_test_global_vm_shutdown_schedule

val yojson_of_azurerm_dev_test_global_vm_shutdown_schedule :
  azurerm_dev_test_global_vm_shutdown_schedule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  daily_recurrence_time : string prop;
  enabled : bool prop;
  id : string prop;
  location : string prop;
  tags : (string * string) list prop;
  timezone : string prop;
  virtual_machine_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  daily_recurrence_time:string prop ->
  location:string prop ->
  timezone:string prop ->
  virtual_machine_id:string prop ->
  notification_settings:notification_settings list ->
  string ->
  t
