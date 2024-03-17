(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_db_snapshot_copy__timeouts
type aws_db_snapshot_copy

val aws_db_snapshot_copy :
  ?copy_tags:bool prop ->
  ?destination_region:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?option_group_name:string prop ->
  ?presigned_url:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?target_custom_availability_zone:string prop ->
  ?timeouts:aws_db_snapshot_copy__timeouts ->
  source_db_snapshot_identifier:string prop ->
  target_db_snapshot_identifier:string prop ->
  string ->
  unit
