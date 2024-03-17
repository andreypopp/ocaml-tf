(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ebs_snapshot_copy__timeouts
type aws_ebs_snapshot_copy

val aws_ebs_snapshot_copy :
  ?description:string prop ->
  ?encrypted:bool prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?permanent_restore:bool prop ->
  ?storage_tier:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?temporary_restore_days:float prop ->
  ?timeouts:aws_ebs_snapshot_copy__timeouts ->
  source_region:string prop ->
  source_snapshot_id:string prop ->
  string ->
  unit
