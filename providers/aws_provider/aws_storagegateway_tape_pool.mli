(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_storagegateway_tape_pool

val aws_storagegateway_tape_pool :
  ?retention_lock_time_in_days:float ->
  ?retention_lock_type:string ->
  ?tags:(string * string) list ->
  pool_name:string ->
  storage_class:string ->
  string ->
  unit
