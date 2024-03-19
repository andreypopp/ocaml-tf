(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_ebs_fast_snapshot_restore

val aws_ebs_fast_snapshot_restore :
  ?timeouts:timeouts ->
  availability_zone:string prop ->
  snapshot_id:string prop ->
  unit ->
  aws_ebs_fast_snapshot_restore

val yojson_of_aws_ebs_fast_snapshot_restore :
  aws_ebs_fast_snapshot_restore -> json

(** RESOURCE REGISTRATION *)

type t = private {
  availability_zone : string prop;
  id : string prop;
  snapshot_id : string prop;
  state : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?timeouts:timeouts ->
  availability_zone:string prop ->
  snapshot_id:string prop ->
  string ->
  t
