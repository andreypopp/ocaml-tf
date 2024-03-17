(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_storagegateway_tape_pool

type t = private {
  arn : string prop;
  id : string prop;
  pool_name : string prop;
  retention_lock_time_in_days : float prop;
  retention_lock_type : string prop;
  storage_class : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_storagegateway_tape_pool :
  ?id:string prop ->
  ?retention_lock_time_in_days:float prop ->
  ?retention_lock_type:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  pool_name:string prop ->
  storage_class:string prop ->
  string ->
  t
