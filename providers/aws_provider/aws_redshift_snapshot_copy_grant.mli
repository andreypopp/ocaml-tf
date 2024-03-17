(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_redshift_snapshot_copy_grant

val aws_redshift_snapshot_copy_grant :
  ?id:string ->
  ?kms_key_id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  snapshot_copy_grant_name:string ->
  string ->
  unit
