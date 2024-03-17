(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_webhook__timeouts
type azurerm_automation_webhook

type t = private {
  automation_account_name : string prop;
  enabled : bool prop;
  expiry_time : string prop;
  id : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  resource_group_name : string prop;
  run_on_worker_group : string prop;
  runbook_name : string prop;
  uri : string prop;
}

val azurerm_automation_webhook :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  ?run_on_worker_group:string prop ->
  ?uri:string prop ->
  ?timeouts:azurerm_automation_webhook__timeouts ->
  automation_account_name:string prop ->
  expiry_time:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  runbook_name:string prop ->
  string ->
  t
