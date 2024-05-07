(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_automation_hybrid_runbook_worker_group

val azurerm_automation_hybrid_runbook_worker_group :
  ?credential_name:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_automation_hybrid_runbook_worker_group

val yojson_of_azurerm_automation_hybrid_runbook_worker_group :
  azurerm_automation_hybrid_runbook_worker_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  automation_account_name : string prop;
  credential_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?credential_name:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?credential_name:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
