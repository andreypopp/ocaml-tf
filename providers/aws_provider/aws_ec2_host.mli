(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_host

val aws_ec2_host :
  ?asset_id:string ->
  ?auto_placement:string ->
  ?host_recovery:string ->
  ?id:string ->
  ?instance_family:string ->
  ?instance_type:string ->
  ?outpost_arn:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  availability_zone:string ->
  string ->
  unit
