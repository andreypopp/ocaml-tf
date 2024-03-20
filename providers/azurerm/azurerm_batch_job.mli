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

type azurerm_batch_job

val azurerm_batch_job :
  ?common_environment_properties:(string * string prop) list ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?priority:float prop ->
  ?task_retry_maximum:float prop ->
  ?timeouts:timeouts ->
  batch_pool_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_batch_job

val yojson_of_azurerm_batch_job : azurerm_batch_job -> json

(** RESOURCE REGISTRATION *)

type t = private {
  batch_pool_id : string prop;
  common_environment_properties : (string * string) list prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  priority : float prop;
  task_retry_maximum : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?common_environment_properties:(string * string prop) list ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?priority:float prop ->
  ?task_retry_maximum:float prop ->
  ?timeouts:timeouts ->
  batch_pool_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?common_environment_properties:(string * string prop) list ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?priority:float prop ->
  ?task_retry_maximum:float prop ->
  ?timeouts:timeouts ->
  batch_pool_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
