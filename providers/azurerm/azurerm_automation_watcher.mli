(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
  ?script_parameters:(string * string prop) list ->
  ?tags:(string * string prop) list ->
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
  automation_account_id : string prop;
  description : string prop;
  etag : string prop;
  execution_frequency_in_seconds : float prop;
  id : string prop;
  location : string prop;
  name : string prop;
  script_name : string prop;
  script_parameters : (string * string) list prop;
  script_run_on : string prop;
  status : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?etag:string prop ->
  ?id:string prop ->
  ?script_parameters:(string * string prop) list ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  automation_account_id:string prop ->
  execution_frequency_in_seconds:float prop ->
  location:string prop ->
  name:string prop ->
  script_name:string prop ->
  script_run_on:string prop ->
  string ->
  t
