(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_batch_job__timeouts
type azurerm_batch_job

val azurerm_batch_job :
  ?common_environment_properties:(string * string) list ->
  ?display_name:string ->
  ?id:string ->
  ?priority:float ->
  ?task_retry_maximum:float ->
  ?timeouts:azurerm_batch_job__timeouts ->
  batch_pool_id:string ->
  name:string ->
  string ->
  unit
