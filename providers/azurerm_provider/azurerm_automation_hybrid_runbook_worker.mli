(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_hybrid_runbook_worker__timeouts
type azurerm_automation_hybrid_runbook_worker

val azurerm_automation_hybrid_runbook_worker :
  ?id:string ->
  ?timeouts:azurerm_automation_hybrid_runbook_worker__timeouts ->
  automation_account_name:string ->
  resource_group_name:string ->
  vm_resource_id:string ->
  worker_group_name:string ->
  worker_id:string ->
  string ->
  unit
