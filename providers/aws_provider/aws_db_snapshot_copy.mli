(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_db_snapshot_copy__timeouts
type aws_db_snapshot_copy

val aws_db_snapshot_copy :
  ?copy_tags:bool ->
  ?destination_region:string ->
  ?id:string ->
  ?kms_key_id:string ->
  ?option_group_name:string ->
  ?presigned_url:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?target_custom_availability_zone:string ->
  ?timeouts:aws_db_snapshot_copy__timeouts ->
  source_db_snapshot_identifier:string ->
  target_db_snapshot_identifier:string ->
  string ->
  unit
