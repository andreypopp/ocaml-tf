(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_capacity_reservation

val aws_ec2_capacity_reservation :
  ?ebs_optimized:bool ->
  ?end_date:string ->
  ?end_date_type:string ->
  ?ephemeral_storage:bool ->
  ?instance_match_criteria:string ->
  ?outpost_arn:string ->
  ?placement_group_arn:string ->
  ?tags:(string * string) list ->
  ?tenancy:string ->
  availability_zone:string ->
  instance_count:float ->
  instance_platform:string ->
  instance_type:string ->
  string ->
  unit
