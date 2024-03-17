(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ebs_volume__timeouts
type aws_ebs_volume

val aws_ebs_volume :
  ?encrypted:bool ->
  ?final_snapshot:bool ->
  ?id:string ->
  ?iops:float ->
  ?kms_key_id:string ->
  ?multi_attach_enabled:bool ->
  ?outpost_arn:string ->
  ?size:float ->
  ?snapshot_id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?throughput:float ->
  ?type_:string ->
  ?timeouts:aws_ebs_volume__timeouts ->
  availability_zone:string ->
  string ->
  unit
