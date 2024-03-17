(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ebs_volume__timeouts
type aws_ebs_volume

val aws_ebs_volume :
  ?final_snapshot:bool ->
  ?multi_attach_enabled:bool ->
  ?outpost_arn:string ->
  ?tags:(string * string) list ->
  ?timeouts:aws_ebs_volume__timeouts ->
  availability_zone:string ->
  string ->
  unit
