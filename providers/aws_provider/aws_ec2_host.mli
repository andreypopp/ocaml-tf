(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_host

val aws_ec2_host :
  ?asset_id:string prop ->
  ?auto_placement:string prop ->
  ?host_recovery:string prop ->
  ?id:string prop ->
  ?instance_family:string prop ->
  ?instance_type:string prop ->
  ?outpost_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  availability_zone:string prop ->
  string ->
  unit
