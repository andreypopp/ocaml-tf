(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_hybrid_runbook_worker_group__timeouts
type azurerm_automation_hybrid_runbook_worker_group

type t = private {
  automation_account_name : string prop;
  credential_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
}

val azurerm_automation_hybrid_runbook_worker_group :
  ?credential_name:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_automation_hybrid_runbook_worker_group__timeouts ->
  automation_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
