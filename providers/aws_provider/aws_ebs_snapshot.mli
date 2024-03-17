(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ebs_snapshot__timeouts
type aws_ebs_snapshot

val aws_ebs_snapshot :
  ?description:string prop ->
  ?id:string prop ->
  ?outpost_arn:string prop ->
  ?permanent_restore:bool prop ->
  ?storage_tier:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?temporary_restore_days:float prop ->
  ?timeouts:aws_ebs_snapshot__timeouts ->
  volume_id:string prop ->
  string ->
  unit
