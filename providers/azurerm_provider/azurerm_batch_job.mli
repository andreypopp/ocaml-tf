(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_batch_job__timeouts
type azurerm_batch_job

type t = private {
  batch_pool_id : string prop;
  common_environment_properties : (string * string) list prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  priority : float prop;
  task_retry_maximum : float prop;
}

val azurerm_batch_job :
  ?common_environment_properties:(string * string prop) list ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?priority:float prop ->
  ?task_retry_maximum:float prop ->
  ?timeouts:azurerm_batch_job__timeouts ->
  batch_pool_id:string prop ->
  name:string prop ->
  string ->
  t
