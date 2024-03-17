(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_hybrid_runbook_worker__timeouts
type azurerm_automation_hybrid_runbook_worker

val azurerm_automation_hybrid_runbook_worker :
  ?id:string prop ->
  ?timeouts:azurerm_automation_hybrid_runbook_worker__timeouts ->
  automation_account_name:string prop ->
  resource_group_name:string prop ->
  vm_resource_id:string prop ->
  worker_group_name:string prop ->
  worker_id:string prop ->
  string ->
  unit
