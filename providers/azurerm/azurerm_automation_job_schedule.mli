(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_automation_job_schedule

val azurerm_automation_job_schedule :
  ?id:string prop ->
  ?job_schedule_id:string prop ->
  ?parameters:(string * string prop) list ->
  ?run_on:string prop ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  resource_group_name:string prop ->
  runbook_name:string prop ->
  schedule_name:string prop ->
  unit ->
  azurerm_automation_job_schedule

val yojson_of_azurerm_automation_job_schedule :
  azurerm_automation_job_schedule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  automation_account_name : string prop;
  id : string prop;
  job_schedule_id : string prop;
  parameters : (string * string) list prop;
  resource_group_name : string prop;
  resource_manager_id : string prop;
  run_on : string prop;
  runbook_name : string prop;
  schedule_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?job_schedule_id:string prop ->
  ?parameters:(string * string prop) list ->
  ?run_on:string prop ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  resource_group_name:string prop ->
  runbook_name:string prop ->
  schedule_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?job_schedule_id:string prop ->
  ?parameters:(string * string prop) list ->
  ?run_on:string prop ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  resource_group_name:string prop ->
  runbook_name:string prop ->
  schedule_name:string prop ->
  string ->
  t Tf_core.resource
