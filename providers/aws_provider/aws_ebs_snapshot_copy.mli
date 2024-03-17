(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ebs_snapshot_copy__timeouts
type aws_ebs_snapshot_copy

val aws_ebs_snapshot_copy :
  ?description:string ->
  ?encrypted:bool ->
  ?id:string ->
  ?kms_key_id:string ->
  ?permanent_restore:bool ->
  ?storage_tier:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?temporary_restore_days:float ->
  ?timeouts:aws_ebs_snapshot_copy__timeouts ->
  source_region:string ->
  source_snapshot_id:string ->
  string ->
  unit
