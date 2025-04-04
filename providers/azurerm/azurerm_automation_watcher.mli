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

type azurerm_automation_watcher

val azurerm_automation_watcher :
  ?description:string prop ->
  ?etag:string prop ->
  ?id:string prop ->
  ?script_parameters:string prop Tf_core.assoc ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  automation_account_id:string prop ->
  execution_frequency_in_seconds:float prop ->
  location:string prop ->
  name:string prop ->
  script_name:string prop ->
  script_run_on:string prop ->
  unit ->
  azurerm_automation_watcher

val yojson_of_azurerm_automation_watcher :
  azurerm_automation_watcher -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  automation_account_id : string prop;
  description : string prop;
  etag : string prop;
  execution_frequency_in_seconds : float prop;
  id : string prop;
  location : string prop;
  name : string prop;
  script_name : string prop;
  script_parameters : string Tf_core.assoc prop;
  script_run_on : string prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?etag:string prop ->
  ?id:string prop ->
  ?script_parameters:string prop Tf_core.assoc ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  automation_account_id:string prop ->
  execution_frequency_in_seconds:float prop ->
  location:string prop ->
  name:string prop ->
  script_name:string prop ->
  script_run_on:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?etag:string prop ->
  ?id:string prop ->
  ?script_parameters:string prop Tf_core.assoc ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  automation_account_id:string prop ->
  execution_frequency_in_seconds:float prop ->
  location:string prop ->
  name:string prop ->
  script_name:string prop ->
  script_run_on:string prop ->
  string ->
  t Tf_core.resource
