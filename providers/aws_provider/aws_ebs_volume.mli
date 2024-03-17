(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ebs_volume__timeouts
type aws_ebs_volume

val aws_ebs_volume :
  ?encrypted:bool prop ->
  ?final_snapshot:bool prop ->
  ?id:string prop ->
  ?iops:float prop ->
  ?kms_key_id:string prop ->
  ?multi_attach_enabled:bool prop ->
  ?outpost_arn:string prop ->
  ?size:float prop ->
  ?snapshot_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?throughput:float prop ->
  ?type_:string prop ->
  ?timeouts:aws_ebs_volume__timeouts ->
  availability_zone:string prop ->
  string ->
  unit
