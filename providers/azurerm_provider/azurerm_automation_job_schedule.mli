(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_job_schedule__timeouts
type azurerm_automation_job_schedule

val azurerm_automation_job_schedule :
  ?parameters:(string * string) list ->
  ?run_on:string ->
  ?timeouts:azurerm_automation_job_schedule__timeouts ->
  automation_account_name:string ->
  resource_group_name:string ->
  runbook_name:string ->
  schedule_name:string ->
  string ->
  unit
