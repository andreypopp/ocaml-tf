(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_source_control__security
type azurerm_automation_source_control__timeouts
type azurerm_automation_source_control

val azurerm_automation_source_control :
  ?automatic_sync:bool ->
  ?branch:string ->
  ?description:string ->
  ?publish_runbook_enabled:bool ->
  ?timeouts:azurerm_automation_source_control__timeouts ->
  automation_account_id:string ->
  folder_path:string ->
  name:string ->
  repository_url:string ->
  source_control_type:string ->
  security:azurerm_automation_source_control__security list ->
  string ->
  unit
