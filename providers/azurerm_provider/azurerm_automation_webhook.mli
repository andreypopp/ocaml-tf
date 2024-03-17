(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_webhook__timeouts
type azurerm_automation_webhook

val azurerm_automation_webhook :
  ?enabled:bool ->
  ?parameters:(string * string) list ->
  ?run_on_worker_group:string ->
  ?timeouts:azurerm_automation_webhook__timeouts ->
  automation_account_name:string ->
  expiry_time:string ->
  name:string ->
  resource_group_name:string ->
  runbook_name:string ->
  string ->
  unit
