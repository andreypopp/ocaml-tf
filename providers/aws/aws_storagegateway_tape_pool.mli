(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_storagegateway_tape_pool

val aws_storagegateway_tape_pool :
  ?id:string prop ->
  ?retention_lock_time_in_days:float prop ->
  ?retention_lock_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  pool_name:string prop ->
  storage_class:string prop ->
  unit ->
  aws_storagegateway_tape_pool

val yojson_of_aws_storagegateway_tape_pool :
  aws_storagegateway_tape_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  pool_name : string prop;
  retention_lock_time_in_days : float prop;
  retention_lock_type : string prop;
  storage_class : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?retention_lock_time_in_days:float prop ->
  ?retention_lock_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  pool_name:string prop ->
  storage_class:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?retention_lock_time_in_days:float prop ->
  ?retention_lock_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  pool_name:string prop ->
  storage_class:string prop ->
  string ->
  t Tf_core.resource
