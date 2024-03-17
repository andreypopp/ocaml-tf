(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_snapshot_create_volume_permission__timeouts
type aws_snapshot_create_volume_permission

type t = private {
  account_id : string prop;
  id : string prop;
  snapshot_id : string prop;
}

val aws_snapshot_create_volume_permission :
  ?id:string prop ->
  ?timeouts:aws_snapshot_create_volume_permission__timeouts ->
  account_id:string prop ->
  snapshot_id:string prop ->
  string ->
  t
