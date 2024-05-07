(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_snapshot_create_volume_permission

val aws_snapshot_create_volume_permission :
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_id:string prop ->
  snapshot_id:string prop ->
  unit ->
  aws_snapshot_create_volume_permission

val yojson_of_aws_snapshot_create_volume_permission :
  aws_snapshot_create_volume_permission -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  id : string prop;
  snapshot_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_id:string prop ->
  snapshot_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_id:string prop ->
  snapshot_id:string prop ->
  string ->
  t Tf_core.resource
