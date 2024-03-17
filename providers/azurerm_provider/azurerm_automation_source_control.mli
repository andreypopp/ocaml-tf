(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_source_control__security
type azurerm_automation_source_control__timeouts
type azurerm_automation_source_control

type t = private {
  automatic_sync : bool prop;
  automation_account_id : string prop;
  branch : string prop;
  description : string prop;
  folder_path : string prop;
  id : string prop;
  name : string prop;
  publish_runbook_enabled : bool prop;
  repository_url : string prop;
  source_control_type : string prop;
}

val azurerm_automation_source_control :
  ?automatic_sync:bool prop ->
  ?branch:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?publish_runbook_enabled:bool prop ->
  ?timeouts:azurerm_automation_source_control__timeouts ->
  automation_account_id:string prop ->
  folder_path:string prop ->
  name:string prop ->
  repository_url:string prop ->
  source_control_type:string prop ->
  security:azurerm_automation_source_control__security list ->
  string ->
  t
