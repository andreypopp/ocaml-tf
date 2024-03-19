(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_automation_hybrid_runbook_worker

val azurerm_automation_hybrid_runbook_worker :
  ?id:string prop ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  resource_group_name:string prop ->
  vm_resource_id:string prop ->
  worker_group_name:string prop ->
  worker_id:string prop ->
  unit ->
  azurerm_automation_hybrid_runbook_worker

val yojson_of_azurerm_automation_hybrid_runbook_worker :
  azurerm_automation_hybrid_runbook_worker -> json

(** RESOURCE REGISTRATION *)

type t = private {
  automation_account_name : string prop;
  id : string prop;
  ip : string prop;
  last_seen_date_time : string prop;
  registration_date_time : string prop;
  resource_group_name : string prop;
  vm_resource_id : string prop;
  worker_group_name : string prop;
  worker_id : string prop;
  worker_name : string prop;
  worker_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  resource_group_name:string prop ->
  vm_resource_id:string prop ->
  worker_group_name:string prop ->
  worker_id:string prop ->
  string ->
  t
