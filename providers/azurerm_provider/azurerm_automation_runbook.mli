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
  job_schedule_id : string;  (** job_schedule_id *)
  parameters : (string * string) list;  (** parameters *)
  run_on : string;  (** run_on *)
  schedule_name : string;  (** schedule_name *)
}
[@@deriving yojson_of]

type azurerm_automation_runbook

val azurerm_automation_runbook :
  ?description:string ->
  ?log_activity_trace_level:float ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_automation_runbook__timeouts ->
  automation_account_name:string ->
  location:string ->
  log_progress:bool ->
  log_verbose:bool ->
  name:string ->
  resource_group_name:string ->
  runbook_type:string ->
  draft:azurerm_automation_runbook__draft list ->
  publish_content_link:
    azurerm_automation_runbook__publish_content_link list ->
  string ->
  unit
