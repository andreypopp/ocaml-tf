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

type azurerm_automation_webhook

val azurerm_automation_webhook :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  ?run_on_worker_group:string prop ->
  ?uri:string prop ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  expiry_time:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  runbook_name:string prop ->
  unit ->
  azurerm_automation_webhook

val yojson_of_azurerm_automation_webhook :
  azurerm_automation_webhook -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  ?run_on_worker_group:string prop ->
  ?uri:string prop ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  expiry_time:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  runbook_name:string prop ->
  string ->
  t

val make :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  ?run_on_worker_group:string prop ->
  ?uri:string prop ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  expiry_time:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  runbook_name:string prop ->
  string ->
  t Tf_core.resource
