(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_job_schedule__timeouts
type azurerm_automation_job_schedule

type t = private {
  automation_account_name : string prop;
  id : string prop;
  job_schedule_id : string prop;
  parameters : (string * string) list prop;
  resource_group_name : string prop;
  run_on : string prop;
  runbook_name : string prop;
  schedule_name : string prop;
}

val azurerm_automation_job_schedule :
  ?id:string prop ->
  ?job_schedule_id:string prop ->
  ?parameters:(string * string prop) list ->
  ?run_on:string prop ->
  ?timeouts:azurerm_automation_job_schedule__timeouts ->
  automation_account_name:string prop ->
  resource_group_name:string prop ->
  runbook_name:string prop ->
  schedule_name:string prop ->
  string ->
  t
