(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_runbook__draft__content_link__hash
type azurerm_automation_runbook__draft__content_link
type azurerm_automation_runbook__draft__parameters
type azurerm_automation_runbook__draft
type azurerm_automation_runbook__publish_content_link__hash
type azurerm_automation_runbook__publish_content_link
type azurerm_automation_runbook__timeouts

type azurerm_automation_runbook__job_schedule = {
  job_schedule_id : string prop;  (** job_schedule_id *)
  parameters : (string * string prop) list;  (** parameters *)
  run_on : string prop;  (** run_on *)
  schedule_name : string prop;  (** schedule_name *)
}

type azurerm_automation_runbook

val azurerm_automation_runbook :
  ?content:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?job_schedule:azurerm_automation_runbook__job_schedule list ->
  ?log_activity_trace_level:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_automation_runbook__timeouts ->
  automation_account_name:string prop ->
  location:string prop ->
  log_progress:bool prop ->
  log_verbose:bool prop ->
  name:string prop ->
  resource_group_name:string prop ->
  runbook_type:string prop ->
  draft:azurerm_automation_runbook__draft list ->
  publish_content_link:
    azurerm_automation_runbook__publish_content_link list ->
  string ->
  unit
