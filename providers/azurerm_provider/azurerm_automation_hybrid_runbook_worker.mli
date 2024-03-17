(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_hybrid_runbook_worker__timeouts
type azurerm_automation_hybrid_runbook_worker

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

val azurerm_automation_hybrid_runbook_worker :
  ?id:string prop ->
  ?timeouts:azurerm_automation_hybrid_runbook_worker__timeouts ->
  automation_account_name:string prop ->
  resource_group_name:string prop ->
  vm_resource_id:string prop ->
  worker_group_name:string prop ->
  worker_id:string prop ->
  string ->
  t
