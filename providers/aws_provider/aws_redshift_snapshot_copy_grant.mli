(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_redshift_snapshot_copy_grant

val aws_redshift_snapshot_copy_grant :
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  snapshot_copy_grant_name:string prop ->
  string ->
  unit
