(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_dev_test_global_vm_shutdown_schedule__notification_settings

type azurerm_dev_test_global_vm_shutdown_schedule__timeouts
type azurerm_dev_test_global_vm_shutdown_schedule

val azurerm_dev_test_global_vm_shutdown_schedule :
  ?enabled:bool ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_dev_test_global_vm_shutdown_schedule__timeouts ->
  daily_recurrence_time:string ->
  location:string ->
  timezone:string ->
  virtual_machine_id:string ->
  notification_settings:
    azurerm_dev_test_global_vm_shutdown_schedule__notification_settings
    list ->
  string ->
  unit
