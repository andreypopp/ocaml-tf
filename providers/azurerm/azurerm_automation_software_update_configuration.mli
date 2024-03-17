(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_software_update_configuration__linux
type azurerm_automation_software_update_configuration__post_task
type azurerm_automation_software_update_configuration__pre_task

type azurerm_automation_software_update_configuration__schedule__monthly_occurrence

type azurerm_automation_software_update_configuration__schedule

type azurerm_automation_software_update_configuration__target__azure_query__tags

type azurerm_automation_software_update_configuration__target__azure_query

type azurerm_automation_software_update_configuration__target__non_azure_query

type azurerm_automation_software_update_configuration__target
type azurerm_automation_software_update_configuration__timeouts
type azurerm_automation_software_update_configuration__windows
type azurerm_automation_software_update_configuration

type t = private {
  automation_account_id : string prop;
  duration : string prop;
  error_code : string prop;
  error_meesage : string prop;
  error_message : string prop;
  id : string prop;
  name : string prop;
  non_azure_computer_names : string list prop;
  operating_system : string prop;
  virtual_machine_ids : string list prop;
}

val azurerm_automation_software_update_configuration :
  ?duration:string prop ->
  ?id:string prop ->
  ?non_azure_computer_names:string prop list ->
  ?operating_system:string prop ->
  ?virtual_machine_ids:string prop list ->
  ?timeouts:
    azurerm_automation_software_update_configuration__timeouts ->
  automation_account_id:string prop ->
  name:string prop ->
  linux:azurerm_automation_software_update_configuration__linux list ->
  post_task:
    azurerm_automation_software_update_configuration__post_task list ->
  pre_task:
    azurerm_automation_software_update_configuration__pre_task list ->
  schedule:
    azurerm_automation_software_update_configuration__schedule list ->
  target:
    azurerm_automation_software_update_configuration__target list ->
  windows:
    azurerm_automation_software_update_configuration__windows list ->
  string ->
  t
