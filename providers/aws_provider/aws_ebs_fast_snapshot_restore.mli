(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ebs_fast_snapshot_restore__timeouts
type aws_ebs_fast_snapshot_restore

type t = private {
  availability_zone : string prop;
  id : string prop;
  snapshot_id : string prop;
  state : string prop;
}

val aws_ebs_fast_snapshot_restore :
  ?timeouts:aws_ebs_fast_snapshot_restore__timeouts ->
  availability_zone:string prop ->
  snapshot_id:string prop ->
  string ->
  t
