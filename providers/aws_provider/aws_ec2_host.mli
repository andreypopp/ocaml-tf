(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_host

val aws_ec2_host :
  ?auto_placement:string ->
  ?host_recovery:string ->
  ?instance_family:string ->
  ?instance_type:string ->
  ?outpost_arn:string ->
  ?tags:(string * string) list ->
  availability_zone:string ->
  string ->
  unit
