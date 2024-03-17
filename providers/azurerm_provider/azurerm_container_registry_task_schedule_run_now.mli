(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_container_registry_task_schedule_run_now__timeouts
type azurerm_container_registry_task_schedule_run_now

val azurerm_container_registry_task_schedule_run_now :
  ?id:string prop ->
  ?timeouts:
    azurerm_container_registry_task_schedule_run_now__timeouts ->
  container_registry_task_id:string prop ->
  string ->
  unit
