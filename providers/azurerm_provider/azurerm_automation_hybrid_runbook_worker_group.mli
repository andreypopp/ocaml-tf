(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_hybrid_runbook_worker_group__timeouts
type azurerm_automation_hybrid_runbook_worker_group

val azurerm_automation_hybrid_runbook_worker_group :
  ?credential_name:string ->
  ?timeouts:azurerm_automation_hybrid_runbook_worker_group__timeouts ->
  automation_account_name:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
