(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ebs_snapshot__timeouts
type aws_ebs_snapshot

val aws_ebs_snapshot :
  ?description:string ->
  ?outpost_arn:string ->
  ?permanent_restore:bool ->
  ?tags:(string * string) list ->
  ?temporary_restore_days:float ->
  ?timeouts:aws_ebs_snapshot__timeouts ->
  volume_id:string ->
  string ->
  unit
