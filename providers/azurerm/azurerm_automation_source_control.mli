(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type security

val security :
  ?refresh_token:string prop ->
  token:string prop ->
  token_type:string prop ->
  unit ->
  security

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_automation_source_control

val azurerm_automation_source_control :
  ?automatic_sync:bool prop ->
  ?branch:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?publish_runbook_enabled:bool prop ->
  ?timeouts:timeouts ->
  automation_account_id:string prop ->
  folder_path:string prop ->
  name:string prop ->
  repository_url:string prop ->
  source_control_type:string prop ->
  security:security list ->
  unit ->
  azurerm_automation_source_control

val yojson_of_azurerm_automation_source_control :
  azurerm_automation_source_control -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?automatic_sync:bool prop ->
  ?branch:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?publish_runbook_enabled:bool prop ->
  ?timeouts:timeouts ->
  automation_account_id:string prop ->
  folder_path:string prop ->
  name:string prop ->
  repository_url:string prop ->
  source_control_type:string prop ->
  security:security list ->
  string ->
  t

val make :
  ?automatic_sync:bool prop ->
  ?branch:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?publish_runbook_enabled:bool prop ->
  ?timeouts:timeouts ->
  automation_account_id:string prop ->
  folder_path:string prop ->
  name:string prop ->
  repository_url:string prop ->
  source_control_type:string prop ->
  security:security list ->
  string ->
  t Tf_core.resource
